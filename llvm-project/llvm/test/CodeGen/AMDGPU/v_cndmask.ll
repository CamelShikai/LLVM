; RUN: llc -march=amdgcn -verify-machineinstrs < %s | FileCheck -check-prefix=GCN -check-prefix=SI %s
; RUN: llc -march=amdgcn -mcpu=tonga -mattr=-flat-for-global -verify-machineinstrs < %s | FileCheck -check-prefix=GCN -check-prefix=VI %s

declare i32 @llvm.amdgcn.workitem.id.x() #1

; GCN-LABEL: {{^}}v_cnd_nan_nosgpr:
; GCN: v_cmp_eq_u32_e64 [[COND:vcc|s\[[0-9]+:[0-9]+\]]], s{{[0-9]+}}, 0
; GCN: v_cndmask_b32_e{{32|64}} v{{[0-9]}}, -1, v{{[0-9]+}}, [[COND]]
; GCN-DAG: v{{[0-9]}}
; All nan values are converted to 0xffffffff
; GCN: s_endpgm
define void @v_cnd_nan_nosgpr(float addrspace(1)* %out, i32 %c, float addrspace(1)* %fptr) #0 {
  %idx = call i32 @llvm.amdgcn.workitem.id.x() #1
  %f.gep = getelementptr float, float addrspace(1)* %fptr, i32 %idx
  %f = load float, float addrspace(1)* %f.gep
  %setcc = icmp ne i32 %c, 0
  %select = select i1 %setcc, float 0xFFFFFFFFE0000000, float %f
  store float %select, float addrspace(1)* %out
  ret void
}


; This requires slightly trickier SGPR operand legalization since the
; single constant bus SGPR usage is the last operand, and it should
; never be moved.

; GCN-LABEL: {{^}}v_cnd_nan:
; GCN: v_cmp_eq_u32_e64 vcc, s{{[0-9]+}}, 0
; GCN: v_cndmask_b32_e32 v{{[0-9]}}, -1, v{{[0-9]}}, vcc
; GCN-DAG: v{{[0-9]}}
; All nan values are converted to 0xffffffff
; GCN: s_endpgm
define void @v_cnd_nan(float addrspace(1)* %out, i32 %c, float %f) #0 {
  %setcc = icmp ne i32 %c, 0
  %select = select i1 %setcc, float 0xFFFFFFFFE0000000, float %f
  store float %select, float addrspace(1)* %out
  ret void
}

; Test different compare and select operand types for optimal code
; shrinking.
; (select (cmp (sgprX, constant)), constant, sgprZ)

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k1_sgprZ_f32:
; GCN: s_load_dword [[X:s[0-9]+]]
; GCN: s_load_dword [[Z:s[0-9]+]]
; GCN-DAG: v_cmp_nlg_f32_e64 vcc, [[X]], 0
; GCN-DAG: v_mov_b32_e32 [[VZ:v[0-9]+]], [[Z]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, [[VZ]], vcc
define void @fcmp_sgprX_k0_select_k1_sgprZ_f32(float addrspace(1)* %out, float %x, float %z) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 1.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k1_sgprX_f32:
; GCN: s_load_dword [[X:s[0-9]+]]
; GCN-DAG: v_cmp_nlg_f32_e64 vcc, [[X]], 0
; GCN-DAG: v_mov_b32_e32 [[VZ:v[0-9]+]], [[Z]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, [[VZ]], vcc
define void @fcmp_sgprX_k0_select_k1_sgprX_f32(float addrspace(1)* %out, float %x) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 1.0, float %x
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k0_sgprZ_f32:
; GCN: s_load_dword [[X:s[0-9]+]]
; GCN-DAG: v_cmp_nlg_f32_e64 vcc, [[X]], 0
; GCN-DAG: v_mov_b32_e32 [[VZ:v[0-9]+]], [[Z]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 0, [[VZ]], vcc
define void @fcmp_sgprX_k0_select_k0_sgprZ_f32(float addrspace(1)* %out, float %x, float %z) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 0.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k0_sgprX_f32:
; GCN: s_load_dword [[X:s[0-9]+]]
; GCN-DAG: v_cmp_nlg_f32_e64 vcc, [[X]], 0
; GCN-DAG: v_mov_b32_e32 [[VZ:v[0-9]+]], [[Z]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 0, [[VZ]], vcc
define void @fcmp_sgprX_k0_select_k0_sgprX_f32(float addrspace(1)* %out, float %x) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 0.0, float %x
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k0_vgprZ_f32:
; GCN-DAG: s_load_dword [[X:s[0-9]+]]
; GCN-DAG: {{buffer|flat}}_load_dword [[Z:v[0-9]+]]
; GCN-DAG: v_cmp_nlg_f32_e64 [[COND:vcc|s\[[0-9]+:[0-9]+\]]], [[X]], 0
; GCN: v_cndmask_b32_e{{32|64}} v{{[0-9]+}}, 0, [[Z]], [[COND]]
define void @fcmp_sgprX_k0_select_k0_vgprZ_f32(float addrspace(1)* %out, float %x, float addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %z.gep = getelementptr inbounds float, float addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %z = load float, float addrspace(1)* %z.gep
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 0.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_sgprX_k0_select_k1_vgprZ_f32:
; GCN-DAG: {{buffer|flat}}_load_dword [[Z:v[0-9]+]]
; GCN-DAG: s_load_dword [[X:s[0-9]+]]
; GCN: v_cmp_nlg_f32_e64 [[COND:vcc|s\[[0-9]+:[0-9]+\]]], [[X]], 0
; GCN: v_cndmask_b32_e{{32|64}} v{{[0-9]+}}, 1.0, [[Z]], [[COND]]
define void @fcmp_sgprX_k0_select_k1_vgprZ_f32(float addrspace(1)* %out, float %x, float addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %z.gep = getelementptr inbounds float, float addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %z = load float, float addrspace(1)* %z.gep
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, float 1.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_vgprX_k0_select_k1_sgprZ_f32:
; GCN-DAG: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN-DAG: s_load_dword [[Z:s[0-9]+]]
; GCN-DAG: v_cmp_ngt_f32_e32 vcc, 0, [[X]]
; GCN-DAG: v_mov_b32_e32 [[VZ:v[0-9]+]], [[Z]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, [[VZ]], vcc
define void @fcmp_vgprX_k0_select_k1_sgprZ_f32(float addrspace(1)* %out, float addrspace(1)* %x.ptr, float %z) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %x = load float, float addrspace(1)* %x.gep
  %setcc = fcmp olt float %x, 0.0
  %select = select i1 %setcc, float 1.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_vgprX_k0_select_k1_vgprZ_f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dword [[Z:v[0-9]+]]
; GCN: v_cmp_le_f32_e32 vcc, 0, [[X]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, [[Z]], vcc
define void @fcmp_vgprX_k0_select_k1_vgprZ_f32(float addrspace(1)* %out, float addrspace(1)* %x.ptr, float addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds float, float addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile float, float addrspace(1)* %z.gep
  %setcc = fcmp ult float %x, 0.0
  %select = select i1 %setcc, float 1.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}icmp_vgprX_k0_select_k1_vgprZ_i32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dword [[Z:v[0-9]+]]
; GCN: v_cmp_lt_i32_e32 vcc, -1, [[X]]
; GCN: v_cndmask_b32_e32 v{{[0-9]+}}, 2, [[Z]], vcc
define void @icmp_vgprX_k0_select_k1_vgprZ_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %x.ptr, i32 addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds i32, i32 addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds i32, i32 addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds i32, i32 addrspace(1)* %out, i64 %tid.ext
  %x = load volatile i32, i32 addrspace(1)* %x.gep
  %z = load volatile i32, i32 addrspace(1)* %z.gep
  %setcc = icmp slt i32 %x, 0
  %select = select i1 %setcc, i32 2, i32 %z
  store i32 %select, i32 addrspace(1)* %out.gep
  ret void
}

; FIXME: Why does VI make the wrong regalloc choice?
; GCN-LABEL: {{^}}icmp_vgprX_k0_select_k1_vgprZ_i64:
; GCN: {{buffer|flat}}_load_dwordx2 v{{\[}}[[X_LO:[0-9]+]]:[[X_HI:[0-9]+]]{{\]}}
; GCN-DAG: {{buffer|flat}}_load_dwordx2 v{{\[}}[[Z_LO:[0-9]+]]:[[Z_HI:[0-9]+]]{{\]}}
; SI-DAG: v_cmp_lt_i64_e32 vcc, -1, v{{\[}}[[X_LO]]:[[X_HI]]{{\]}}
; SI-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 0, v[[Z_HI]], vcc
; SI-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 2, v[[Z_LO]], vcc

; VI-DAG: v_cmp_lt_i64_e64 s{{\[[0-9]+:[0-9]+\]}}, -1, v{{\[}}[[X_LO]]:[[X_HI]]{{\]}}
; VI-DAG: v_cndmask_b32_e64 v{{[0-9]+}}, 0, v[[Z_HI]], s
; VI-DAG: v_cndmask_b32_e64 v{{[0-9]+}}, 2, v[[Z_LO]], s
define void @icmp_vgprX_k0_select_k1_vgprZ_i64(i64 addrspace(1)* %out, i64 addrspace(1)* %x.ptr, i64 addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds i64, i64 addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds i64, i64 addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds i64, i64 addrspace(1)* %out, i64 %tid.ext
  %x = load volatile i64, i64 addrspace(1)* %x.gep
  %z = load volatile i64, i64 addrspace(1)* %z.gep
  %setcc = icmp slt i64 %x, 0
  %select = select i1 %setcc, i64 2, i64 %z
  store i64 %select, i64 addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_vgprX_k0_select_vgprZ_k1_v4f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dwordx4

; GCN: v_cmp_nge_f32_e32 vcc, 4.0, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 2.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, -0.5, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 4.0, v{{[0-9]+}}, vcc
define void @fcmp_vgprX_k0_select_vgprZ_k1_v4f32(<4 x float> addrspace(1)* %out, float addrspace(1)* %x.ptr, <4 x float> addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile <4 x float>, <4 x float> addrspace(1)* %z.gep
  %setcc = fcmp ugt float %x, 4.0
  %select = select i1 %setcc, <4 x float> %z, <4 x float> <float 1.0, float 2.0, float -0.5, float 4.0>
  store <4 x float> %select, <4 x float> addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}fcmp_vgprX_k0_select_k1_vgprZ_v4f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dwordx4

; GCN: v_cmp_ge_f32_e32 vcc, 4.0, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 2.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, -0.5, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 4.0, v{{[0-9]+}}, vcc
define void @fcmp_vgprX_k0_select_k1_vgprZ_v4f32(<4 x float> addrspace(1)* %out, float addrspace(1)* %x.ptr, <4 x float> addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile <4 x float>, <4 x float> addrspace(1)* %z.gep
  %setcc = fcmp ugt float %x, 4.0
  %select = select i1 %setcc, <4 x float> <float 1.0, float 2.0, float -0.5, float 4.0>, <4 x float> %z
  store <4 x float> %select, <4 x float> addrspace(1)* %out.gep
  ret void
}

; This must be swapped as a vector type before the condition has
; multiple uses.

; GCN-LABEL: {{^}}fcmp_k0_vgprX_select_k1_vgprZ_v4f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dwordx4

; GCN: v_cmp_le_f32_e32 vcc, 4.0, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 1.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 2.0, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, -0.5, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 4.0, v{{[0-9]+}}, vcc
define void @fcmp_k0_vgprX_select_k1_vgprZ_v4f32(<4 x float> addrspace(1)* %out, float addrspace(1)* %x.ptr, <4 x float> addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds <4 x float>, <4 x float> addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile <4 x float>, <4 x float> addrspace(1)* %z.gep
  %setcc = fcmp ugt float 4.0, %x
  %select = select i1 %setcc, <4 x float> <float 1.0, float 2.0, float -0.5, float 4.0>, <4 x float> %z
  store <4 x float> %select, <4 x float> addrspace(1)* %out.gep
  ret void
}

; GCN-LABEL: {{^}}icmp_vgprX_k0_select_k1_vgprZ_i1:
; GCN: load_dword
; GCN: load_ubyte
; GCN-DAG: v_cmp_gt_i32_e64 s{{\[[0-9]+:[0-9]+\]}}, 0, v
; DCN-DAG: v_and_b32_e32 v{{[0-9]+}}, 1,
; GCN-DAG: v_cmp_eq_u32_e32 vcc, 1, v
; GCN-DAG: s_or_b64 s{{\[[0-9]+:[0-9]+\]}}, s{{\[[0-9]+:[0-9]+\]}}, vcc
; GCN: v_cndmask_b32_e64 v{{[0-9]+}}, 0, 1, s
; GCN: store_byte
define void @icmp_vgprX_k0_select_k1_vgprZ_i1(i1 addrspace(1)* %out, i32 addrspace(1)* %x.ptr, i1 addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds i32, i32 addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds i1, i1 addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds i1, i1 addrspace(1)* %out, i64 %tid.ext
  %x = load volatile i32, i32 addrspace(1)* %x.gep
  %z = load volatile i1, i1 addrspace(1)* %z.gep
  %setcc = icmp slt i32 %x, 0
  %select = select i1 %setcc, i1 true, i1 %z
  store i1 %select, i1 addrspace(1)* %out.gep
  ret void
}

; Different types compared vs. selected
; GCN-LABEL: {{^}}fcmp_vgprX_k0_selectf64_k1_vgprZ_f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dwordx2

; GCN: v_mov_b32_e32 [[K:v[0-9]+]], 0x3ff00000
; GCN: v_cmp_le_f32_e32 vcc, 0, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, [[K]], v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 0, v{{[0-9]+}}, vcc
define void @fcmp_vgprX_k0_selectf64_k1_vgprZ_f32(double addrspace(1)* %out, float addrspace(1)* %x.ptr, double addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds double, double addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds double, double addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile double, double addrspace(1)* %z.gep
  %setcc = fcmp ult float %x, 0.0
  %select = select i1 %setcc, double 1.0, double %z
  store double %select, double addrspace(1)* %out.gep
  ret void
}

; Different types compared vs. selected
; GCN-LABEL: {{^}}fcmp_vgprX_k0_selecti64_k1_vgprZ_f32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dwordx2

; GCN: v_cmp_nlg_f32_e32 vcc, 0, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 3, v{{[0-9]+}}, vcc
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 0, v{{[0-9]+}}, vcc
define void @fcmp_vgprX_k0_selecti64_k1_vgprZ_f32(i64 addrspace(1)* %out, float addrspace(1)* %x.ptr, i64 addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds i64, i64 addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds i64, i64 addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile i64, i64 addrspace(1)* %z.gep
  %setcc = fcmp one float %x, 0.0
  %select = select i1 %setcc, i64 3, i64 %z
  store i64 %select, i64 addrspace(1)* %out.gep
  ret void
}

; Different types compared vs. selected
; GCN-LABEL: {{^}}icmp_vgprX_k0_selectf32_k1_vgprZ_i32:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]
; GCN: {{buffer|flat}}_load_dword [[Z:v[0-9]+]]

; GCN: v_cmp_gt_u32_e32 vcc, 2, [[X]]
; GCN-DAG: v_cndmask_b32_e32 v{{[0-9]+}}, 4.0, [[Z]], vcc
define void @icmp_vgprX_k0_selectf32_k1_vgprZ_i32(float addrspace(1)* %out, i32 addrspace(1)* %x.ptr, float addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds i32, i32 addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds float, float addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %x = load volatile i32, i32 addrspace(1)* %x.gep
  %z = load volatile float, float addrspace(1)* %z.gep
  %setcc = icmp ugt i32 %x, 1
  %select = select i1 %setcc, float 4.0, float %z
  store float %select, float addrspace(1)* %out.gep
  ret void
}

; FIXME: Should be able to handle multiple uses

; GCN-LABEL: {{^}}fcmp_k0_vgprX_select_k1_vgprZ_f32_cond_use_x2:
; GCN: {{buffer|flat}}_load_dword [[X:v[0-9]+]]

; GCN: v_cmp_nle_f32_e32 vcc, 4.0, [[X]]
; GCN-DAG: v_cndmask_b32_e64 v{{[0-9]+}}, v{{[0-9]+}}, -1.0, vcc
; GCN-DAG: v_cndmask_b32_e64 v{{[0-9]+}}, v{{[0-9]+}}, -2.0, vcc
define void @fcmp_k0_vgprX_select_k1_vgprZ_f32_cond_use_x2(float addrspace(1)* %out, float addrspace(1)* %x.ptr, float addrspace(1)* %z.ptr) #0 {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() #1
  %tid.ext = sext i32 %tid to i64
  %x.gep = getelementptr inbounds float, float addrspace(1)* %x.ptr, i64 %tid.ext
  %z.gep = getelementptr inbounds float, float addrspace(1)* %z.ptr, i64 %tid.ext
  %out.gep = getelementptr inbounds float, float addrspace(1)* %out, i64 %tid.ext
  %x = load volatile float, float addrspace(1)* %x.gep
  %z = load volatile float, float addrspace(1)* %z.gep
  %setcc = fcmp ugt float 4.0, %x
  %select0 = select i1 %setcc, float -1.0, float %z
  %select1 = select i1 %setcc, float -2.0, float %z
  store volatile float %select0, float addrspace(1)* %out.gep
  store volatile float %select1, float addrspace(1)* %out.gep
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }