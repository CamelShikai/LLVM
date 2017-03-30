# Install script for directory: /media/windows/win2/Research/llvm-project/llvm/tools

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/media/windows/win2/Research/llvm_release_build/tools/lto/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/gold/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-ar/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-config/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-lto/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-profdata/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/bugpoint/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/bugpoint-passes/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/dsymutil/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llc/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/lli/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-as/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-as-fuzzer/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-bcanalyzer/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-c-test/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-cat/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-cov/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-cxxdump/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-cxxfilt/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-diff/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-dis/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-dwarfdump/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-dwp/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-extract/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-go/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-link/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-lto2/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-mc/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-mc-assemble-fuzzer/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-mc-disassemble-fuzzer/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-mcmarkup/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-modextract/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-nm/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-objdump/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-opt-report/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-pdbdump/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-readobj/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-rtdyld/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-size/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-split/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-stress/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-strings/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-symbolizer/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/llvm-xray/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/msbuild/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/obj2yaml/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/opt/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/sancov/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/sanstats/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/verify-uselistorder/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/xcode-toolchain/cmake_install.cmake")
  include("/media/windows/win2/Research/llvm_release_build/tools/yaml2obj/cmake_install.cmake")

endif()

