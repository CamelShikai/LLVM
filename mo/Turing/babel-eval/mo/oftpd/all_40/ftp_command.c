/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 216 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h"
typedef unsigned long size_t;
#line 40 "/usr/include/bits/types.h"
typedef int __int32_t;
#line 131 "/usr/include/bits/types.h"
typedef long __off_t;
#line 90 "/usr/include/stdio.h"
typedef __off_t off_t;
#line 28 "/usr/include/bits/sockaddr.h"
typedef unsigned short sa_family_t;
#line 149 "/usr/include/bits/socket.h"
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14] ;
};
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};

#line 49 "/usr/include/stdint.h"
typedef unsigned short uint16_t;
#line 51 "/usr/include/stdint.h"
typedef unsigned int uint32_t;
#line 30 "/usr/include/netinet/in.h"
typedef uint32_t in_addr_t;
#line 31 "/usr/include/netinet/in.h"
struct in_addr {
   in_addr_t s_addr ;
};
#line 117 "/usr/include/netinet/in.h"
typedef uint16_t in_port_t;
#line 237 "/usr/include/netinet/in.h"
struct sockaddr_in {
   sa_family_t sin_family ;
   in_port_t sin_port ;
   struct in_addr sin_addr ;
   unsigned char sin_zero[((sizeof(struct sockaddr ) - sizeof(unsigned short )) - sizeof(in_port_t )) - sizeof(struct in_addr )] ;
};
#line 49 "af_portability.h"
typedef struct sockaddr_in sockaddr_storage_t;
#line 48 "ftp_command.h"
union __anonunion_arg_27 {
   char string[4097] ;
   sockaddr_storage_t host_port ;
   int num ;
   off_t offset ;
};
#line 48 "ftp_command.h"
struct __anonstruct_ftp_command_t_26 {
   char command[5] ;
   int num_arg ;
   union __anonunion_arg_27 arg[2] ;
};
#line 48 "ftp_command.h"
typedef struct __anonstruct_ftp_command_t_26 ftp_command_t;
#line 32 "ftp_command.c"
struct __anonstruct_command_def_28 {
   char *name ;
   int arg_type ;
};
#line 46 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__nonnull__(1,2), __leaf__)) memcpy)(void * __restrict  __dest ,
                                                                                                 void const   * __restrict  __src ,
                                                                                                 size_t __n ) ;
#line 129
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 398
extern  __attribute__((__nothrow__)) size_t ( __attribute__((__nonnull__(1), __leaf__)) strlen)(char const   *__s )  __attribute__((__pure__)) ;
#line 537
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,2), __leaf__)) strncasecmp)(char const   *__s1 ,
                                                                                                    char const   *__s2 ,
                                                                                                    size_t __n )  __attribute__((__pure__)) ;
#line 79 "/usr/include/ctype.h"
extern  __attribute__((__nothrow__)) unsigned short const   **( __attribute__((__leaf__)) __ctype_b_loc)(void)  __attribute__((__const__)) ;
#line 81
extern  __attribute__((__nothrow__)) __int32_t const   **( __attribute__((__leaf__)) __ctype_tolower_loc)(void)  __attribute__((__const__)) ;
#line 83
extern  __attribute__((__nothrow__)) __int32_t const   **( __attribute__((__leaf__)) __ctype_toupper_loc)(void)  __attribute__((__const__)) ;
#line 124
__inline extern  __attribute__((__nothrow__)) int __attribute__((__gnu_inline__))  ( __attribute__((__leaf__)) tolower)(int __c ) ;
#line 127
__inline extern  __attribute__((__nothrow__)) int __attribute__((__gnu_inline__))  ( __attribute__((__leaf__)) toupper)(int __c ) ;
#line 364 "/usr/include/stdio.h"
extern  __attribute__((__nothrow__)) int sprintf(char * __restrict  __s , char const   * __restrict  __format 
                                                 , ...) ;
#line 73 "/usr/include/arpa/inet.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) inet_aton)(char const   *__cp ,
                                                                                struct in_addr *__inp ) ;
#line 60 "ftp_command.h"
int ftp_command_parse(char const   *input , ftp_command_t *cmd ) ;
#line 10 "daemon_assert.h"
extern void daemon_assert_fail(char const   *assertion , char const   *file , int line ,
                               char const   *function ) ;
#line 32 "ftp_command.c"
struct __anonstruct_command_def_28 command_def[25]  = 
#line 32 "ftp_command.c"
  {      {(char *)"USER", 1}, 
        {(char *)"PASS", 1}, 
        {(char *)"CWD", 1}, 
        {(char *)"CDUP", 0}, 
        {(char *)"QUIT", 0}, 
        {(char *)"PORT", 3}, 
        {(char *)"LPRT", 8}, 
        {(char *)"EPRT", 9}, 
        {(char *)"PASV", 0}, 
        {(char *)"LPSV", 0}, 
        {(char *)"EPSV", 10}, 
        {(char *)"TYPE", 4}, 
        {(char *)"STRU", 5}, 
        {(char *)"MODE", 6}, 
        {(char *)"RETR", 1}, 
        {(char *)"STOR", 1}, 
        {(char *)"PWD", 0}, 
        {(char *)"LIST", 2}, 
        {(char *)"NLST", 2}, 
        {(char *)"SYST", 0}, 
        {(char *)"HELP", 2}, 
        {(char *)"NOOP", 0}, 
        {(char *)"REST", 7}, 
        {(char *)"SIZE", 1}, 
        {(char *)"MDTM", 1}};
#line 66
static char const   *copy_string(char *dst , char const   *src ) ;
#line 67
static char const   *parse_host_port(struct sockaddr_in *addr , char const   *s ) ;
#line 68
static char const   *parse_number(int *num , char const   *s , int max_num ) ;
#line 69
static char const   *parse_offset(off_t *ofs , char const   *s ) ;
#line 70
static char const   *parse_host_port_long(sockaddr_storage_t *sa , char const   *s ) ;
#line 71
static char const   *parse_host_port_ext(sockaddr_storage_t *sa , char const   *s ) ;
int parse_offset_cil_lr_1(off_t **__cil_ap_ofs , char const   **__cil_ap_s , off_t *__cil_ap_tmp_ofs ,
                          char const   **__cil_ap___cil_ret8 , off_t max_ofs ) ;
int parse_number_cil_lr_1(int **__cil_ap_num , char const   **__cil_ap_s , int *__cil_ap_max_num ,
                          int *__cil_ap_tmp , char const   **__cil_ap___cil_ret8 ) ;
#line 73 "ftp_command.c"
int ftp_command_parse(char const   *input , ftp_command_t *cmd ) 
{ 
  int i ;
  int len ;
  int match ;
  ftp_command_t tmp ;
  int c ;
  char const   *optional_number ;
  size_t tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int __res ;
  int __attribute__((__gnu_inline__))  tmp___4 ;
  __int32_t const   **tmp___5 ;
  int __res___0 ;
  int __attribute__((__gnu_inline__))  tmp___7 ;
  __int32_t const   **tmp___8 ;
  int __res___1 ;
  int __attribute__((__gnu_inline__))  tmp___10 ;
  __int32_t const   **tmp___11 ;
  int __res___2 ;
  int __attribute__((__gnu_inline__))  tmp___13 ;
  __int32_t const   **tmp___14 ;
  int __res___3 ;
  int __attribute__((__gnu_inline__))  tmp___16 ;
  __int32_t const   **tmp___17 ;
  int __res___4 ;
  int __attribute__((__gnu_inline__))  tmp___19 ;
  __int32_t const   **tmp___20 ;
  int __res___5 ;
  int __attribute__((__gnu_inline__))  tmp___22 ;
  __int32_t const   **tmp___23 ;

  {
#line 82
  if (! ((unsigned long )input != (unsigned long )((void *)0))) {
#line 82
    daemon_assert_fail("input != ((void *)0)", "ftp_command.c", 82, "ftp_command_parse");
  }
#line 83
  if (! ((unsigned long )cmd != (unsigned long )((void *)0))) {
#line 83
    daemon_assert_fail("cmd != ((void *)0)", "ftp_command.c", 83, "ftp_command_parse");
  }
#line 86
  match = -1;
#line 87
  i = 0;
#line 87
  while (1) {
#line 87
    if ((unsigned long )i < sizeof(command_def) / sizeof(command_def[0])) {
#line 87
      if (! (match == -1)) {
#line 87
        break;
      }
    } else {
#line 87
      break;
    }
#line 88
    tmp___0 = strlen((char const   *)command_def[i].name);
#line 88
    len = (int )tmp___0;
#line 89
    tmp___1 = strncasecmp(input, (char const   *)command_def[i].name, (size_t )len);
#line 89
    if (tmp___1 == 0) {
#line 90
      match = i;
    }
#line 87
    i ++;
  }
#line 95
  if (match == -1) {
#line 96
    return (0);
  }
#line 98
  if (! (match >= 0)) {
#line 98
    daemon_assert_fail("match >= 0", "ftp_command.c", 98, "ftp_command_parse");
  }
#line 99
  if (! ((unsigned long )match < sizeof(command_def) / sizeof(command_def[0]))) {
#line 99
    daemon_assert_fail("match < (sizeof(command_def) / sizeof(command_def[0]))", "ftp_command.c",
                       99, "ftp_command_parse");
  }
#line 102
  strcpy((char */* __restrict  */)(tmp.command), (char const   */* __restrict  */)command_def[match].name);
#line 105
  tmp___2 = strlen((char const   *)command_def[match].name);
#line 105
  input += tmp___2;
#line 108
  switch (command_def[match].arg_type) {
  case 0: 
#line 111
  tmp.num_arg = 0;
#line 112
  break;
  case 1: 
#line 115
  if ((int const   )*input != 32) {
#line 116
    return (0);
  }
#line 118
  input ++;
#line 119
  input = copy_string(tmp.arg[0].string, input);
#line 120
  tmp.num_arg = 1;
#line 121
  break;
  case 2: 
#line 124
  if ((int const   )*input == 32) {
#line 125
    input ++;
#line 126
    input = copy_string(tmp.arg[0].string, input);
#line 127
    tmp.num_arg = 1;
  } else {
#line 129
    tmp.num_arg = 0;
  }
#line 131
  break;
  case 3: 
#line 134
  if ((int const   )*input != 32) {
#line 135
    return (0);
  }
#line 137
  input ++;
#line 140
  input = parse_host_port(& tmp.arg[0].host_port, input);
#line 141
  if ((unsigned long )input == (unsigned long )((void *)0)) {
#line 142
    return (0);
  }
#line 144
  tmp.num_arg = 1;
#line 145
  break;
  case 8: 
#line 148
  if ((int const   )*input != 32) {
#line 149
    return (0);
  }
#line 151
  input ++;
#line 154
  input = parse_host_port_long(& tmp.arg[0].host_port, input);
#line 155
  if ((unsigned long )input == (unsigned long )((void *)0)) {
#line 156
    return (0);
  }
#line 158
  tmp.num_arg = 1;
#line 159
  break;
  case 9: 
#line 162
  if ((int const   )*input != 32) {
#line 163
    return (0);
  }
#line 165
  input ++;
#line 168
  input = parse_host_port_ext(& tmp.arg[0].host_port, input);
#line 169
  if ((unsigned long )input == (unsigned long )((void *)0)) {
#line 170
    return (0);
  }
#line 172
  tmp.num_arg = 1;
#line 173
  break;
  case 10: 
#line 177
  if ((int const   )*input == 32) {
#line 178
    input ++;
#line 179
    optional_number = parse_number(& tmp.arg[0].num, input, 255);
#line 180
    if ((unsigned long )optional_number != (unsigned long )((void *)0)) {
#line 181
      input = optional_number;
    } else {
#line 183
      if (sizeof(*(input + 0)) > 1UL) {
#line 183
        tmp___4 = tolower((int )*(input + 0));
#line 183
        __res = (int )tmp___4;
      } else {
#line 183
        tmp___5 = __ctype_tolower_loc();
#line 183
        __res = (int )*(*tmp___5 + (int )*(input + 0));
      }
#line 185
      if (__res == 97) {
#line 184
        if (sizeof(*(input + 1)) > 1UL) {
#line 184
          tmp___7 = tolower((int )*(input + 1));
#line 184
          __res___0 = (int )tmp___7;
        } else {
#line 184
          tmp___8 = __ctype_tolower_loc();
#line 184
          __res___0 = (int )*(*tmp___8 + (int )*(input + 1));
        }
#line 185
        if (__res___0 == 108) {
#line 185
          if (sizeof(*(input + 2)) > 1UL) {
#line 185
            tmp___10 = tolower((int )*(input + 2));
#line 185
            __res___1 = (int )tmp___10;
          } else {
#line 185
            tmp___11 = __ctype_tolower_loc();
#line 185
            __res___1 = (int )*(*tmp___11 + (int )*(input + 2));
          }
#line 185
          if (__res___1 == 108) {
#line 187
            tmp.arg[0].num = -1;
#line 188
            input += 3;
          } else {
#line 190
            return (0);
          }
        } else {
#line 190
          return (0);
        }
      } else {
#line 190
        return (0);
      }
    }
#line 193
    tmp.num_arg = 1;
  } else {
#line 195
    tmp.num_arg = 0;
  }
#line 197
  break;
  case 4: 
#line 200
  if ((int const   )*input != 32) {
#line 201
    return (0);
  }
#line 203
  input ++;
#line 205
  if (sizeof(*input) > 1UL) {
#line 205
    tmp___13 = toupper((int )*input);
#line 205
    __res___2 = (int )tmp___13;
  } else {
#line 205
    tmp___14 = __ctype_toupper_loc();
#line 205
    __res___2 = (int )*(*tmp___14 + (int )*input);
  }
#line 205
  c = __res___2;
#line 206
  if (c == 65) {
#line 206
    goto _L;
  } else
#line 206
  if (c == 69) {
    _L: /* CIL Label */ 
#line 207
    tmp.arg[0].string[0] = (char )c;
#line 208
    tmp.arg[0].string[1] = (char )'\000';
#line 209
    input ++;
#line 211
    if ((int const   )*input == 32) {
#line 212
      input ++;
#line 213
      if (sizeof(*input) > 1UL) {
#line 213
        tmp___16 = toupper((int )*input);
#line 213
        __res___3 = (int )tmp___16;
      } else {
#line 213
        tmp___17 = __ctype_toupper_loc();
#line 213
        __res___3 = (int )*(*tmp___17 + (int )*input);
      }
#line 213
      c = __res___3;
#line 214
      if (c != 78) {
#line 214
        if (c != 84) {
#line 214
          if (c != 67) {
#line 215
            return (0);
          }
        }
      }
#line 217
      tmp.arg[1].string[0] = (char )c;
#line 218
      tmp.arg[1].string[1] = (char )'\000';
#line 219
      input ++;
#line 220
      tmp.num_arg = 2;
    } else {
#line 222
      tmp.num_arg = 1;
    }
  } else
#line 224
  if (c == 73) {
#line 225
    tmp.arg[0].string[0] = (char )'I';
#line 226
    tmp.arg[0].string[1] = (char )'\000';
#line 227
    input ++;
#line 228
    tmp.num_arg = 1;
  } else
#line 229
  if (c == 76) {
#line 230
    tmp.arg[0].string[0] = (char )'L';
#line 231
    tmp.arg[0].string[1] = (char )'\000';
#line 232
    input ++;
#line 233
    input = parse_number(& tmp.arg[1].num, input, 255);
#line 234
    if ((unsigned long )input == (unsigned long )((void *)0)) {
#line 235
      return (0);
    }
#line 237
    tmp.num_arg = 2;
  } else {
#line 239
    return (0);
  }
#line 242
  break;
  case 5: 
#line 245
  if ((int const   )*input != 32) {
#line 246
    return (0);
  }
#line 248
  input ++;
#line 250
  if (sizeof(*input) > 1UL) {
#line 250
    tmp___19 = toupper((int )*input);
#line 250
    __res___4 = (int )tmp___19;
  } else {
#line 250
    tmp___20 = __ctype_toupper_loc();
#line 250
    __res___4 = (int )*(*tmp___20 + (int )*input);
  }
#line 250
  c = __res___4;
#line 251
  if (c != 70) {
#line 251
    if (c != 82) {
#line 251
      if (c != 80) {
#line 252
        return (0);
      }
    }
  }
#line 254
  input ++;
#line 255
  tmp.arg[0].string[0] = (char )c;
#line 256
  tmp.arg[0].string[1] = (char )'\000';
#line 257
  tmp.num_arg = 1;
#line 258
  break;
  case 6: 
#line 261
  if ((int const   )*input != 32) {
#line 262
    return (0);
  }
#line 264
  input ++;
#line 266
  if (sizeof(*input) > 1UL) {
#line 266
    tmp___22 = toupper((int )*input);
#line 266
    __res___5 = (int )tmp___22;
  } else {
#line 266
    tmp___23 = __ctype_toupper_loc();
#line 266
    __res___5 = (int )*(*tmp___23 + (int )*input);
  }
#line 266
  c = __res___5;
#line 267
  if (c != 83) {
#line 267
    if (c != 66) {
#line 267
      if (c != 67) {
#line 268
        return (0);
      }
    }
  }
#line 270
  input ++;
#line 271
  tmp.arg[0].string[0] = (char )c;
#line 272
  tmp.arg[0].string[1] = (char )'\000';
#line 273
  tmp.num_arg = 1;
#line 274
  break;
  case 7: 
#line 277
  if ((int const   )*input != 32) {
#line 278
    return (0);
  }
#line 280
  input ++;
#line 281
  input = parse_offset(& tmp.arg[0].offset, input);
#line 282
  if ((unsigned long )input == (unsigned long )((void *)0)) {
#line 283
    return (0);
  }
#line 285
  tmp.num_arg = 1;
#line 286
  break;
  default: 
#line 289
  daemon_assert_fail("0", "ftp_command.c", 289, "ftp_command_parse");
  }
#line 293
  if ((int const   )*input != 10) {
#line 294
    return (0);
  }
#line 298
  *cmd = tmp;
#line 299
  return (1);
}
}
static const char *copy_string(char *dst, const char *src)
{
    int i;

    ((dst != 
# 307 "ftp_command.c" 3 4
   ((void *)0)
# 307 "ftp_command.c"
   ) ? 0 : (daemon_assert_fail("dst != ((void *)0)", "ftp_command.c", 307, __func__)));
    ((src != 
# 308 "ftp_command.c" 3 4
   ((void *)0)
# 308 "ftp_command.c"
   ) ? 0 : (daemon_assert_fail("src != ((void *)0)", "ftp_command.c", 308, __func__)));

    for (i=0; (i<=
# 310 "ftp_command.c" 3 4
                 4096
# 310 "ftp_command.c"
                               ) && (src[i]!='\0') && (src[i]!='\n'); i++) {
        dst[i] = src[i];
    }
    dst[i] = '\0';

    return src+i;
}

static char const   *parse_host_port(struct sockaddr_in *addr , char const   *s ) 
{ 
  int i ;
  int octets[6] ;
  char addr_str[16] ;
  int port ;
  struct in_addr in_addr ;
  int tmp ;
  unsigned short __v ;
  unsigned short __x ;

  {
#line 327
  if (! ((unsigned long )addr != (unsigned long )((void *)0))) {
#line 327
    daemon_assert_fail("addr != ((void *)0)", "ftp_command.c", 327, "parse_host_port");
  }
#line 328
  if (! ((unsigned long )s != (unsigned long )((void *)0))) {
#line 328
    daemon_assert_fail("s != ((void *)0)", "ftp_command.c", 328, "parse_host_port");
  }
#line 331
  i = 0;
#line 331
  while (i < 5) {
#line 332
    s = parse_number(& octets[i], s, 255);
#line 333
    if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 334
      return ((char const   *)((void *)0));
    }
#line 336
    if ((int const   )*s != 44) {
#line 337
      return ((char const   *)((void *)0));
    }
#line 339
    s ++;
#line 331
    i ++;
  }
#line 343
  s = parse_number(& octets[5], s, 255);
#line 344
  if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 345
    return ((char const   *)((void *)0));
  }
#line 348
  if (! (octets[0] >= 0)) {
#line 348
    daemon_assert_fail("octets[0] >= 0", "ftp_command.c", 348, "parse_host_port");
  }
#line 349
  if (! (octets[0] <= 255)) {
#line 349
    daemon_assert_fail("octets[0] <= 255", "ftp_command.c", 349, "parse_host_port");
  }
#line 350
  if (! (octets[1] >= 0)) {
#line 350
    daemon_assert_fail("octets[1] >= 0", "ftp_command.c", 350, "parse_host_port");
  }
#line 351
  if (! (octets[1] <= 255)) {
#line 351
    daemon_assert_fail("octets[1] <= 255", "ftp_command.c", 351, "parse_host_port");
  }
#line 352
  if (! (octets[2] >= 0)) {
#line 352
    daemon_assert_fail("octets[2] >= 0", "ftp_command.c", 352, "parse_host_port");
  }
#line 353
  if (! (octets[2] <= 255)) {
#line 353
    daemon_assert_fail("octets[2] <= 255", "ftp_command.c", 353, "parse_host_port");
  }
#line 354
  if (! (octets[3] >= 0)) {
#line 354
    daemon_assert_fail("octets[3] >= 0", "ftp_command.c", 354, "parse_host_port");
  }
#line 355
  if (! (octets[3] <= 255)) {
#line 355
    daemon_assert_fail("octets[3] <= 255", "ftp_command.c", 355, "parse_host_port");
  }
#line 358
  sprintf((char */* __restrict  */)(addr_str), (char const   */* __restrict  */)"%d.%d.%d.%d",
          octets[0], octets[1], octets[2], octets[3]);
#line 360
  port = (octets[4] << 8) | octets[5];
#line 362
  tmp = inet_aton((char const   *)(addr_str), & in_addr);
#line 362
  if (tmp == 0) {
#line 363
    return ((char const   *)((void *)0));
  }
#line 371
  addr->sin_family = (sa_family_t )2;
#line 372
  addr->sin_addr = in_addr;
#line 373
  __x = (unsigned short )port;
#line 373
  __asm__  ("rorw $8, %w0": "=r" (__v): "0" (__x): "cc");
#line 373
  addr->sin_port = __v;
#line 376
  return (s);
}
}
#line 381 "ftp_command.c"
static char const   *parse_host_port_long(sockaddr_storage_t *sa , char const   *s ) 
{ 
  int i ;
  int family ;
  int tmp ;
  int addr_len ;
  unsigned char addr[255] ;
  int port_len ;
  unsigned char port[255] ;
  unsigned short __v ;
  unsigned short __x ;

  {
#line 392
  s = parse_number(& family, s, 255);
#line 393
  if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 394
    return ((char const   *)((void *)0));
  }
#line 396
  if ((int const   )*s != 44) {
#line 397
    return ((char const   *)((void *)0));
  }
#line 399
  s ++;
#line 402
  s = parse_number(& addr_len, s, 255);
#line 403
  if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 404
    return ((char const   *)((void *)0));
  }
#line 406
  if ((int const   )*s != 44) {
#line 407
    return ((char const   *)((void *)0));
  }
#line 409
  s ++;
#line 412
  i = 0;
#line 412
  while (i < addr_len) {
#line 413
    if (! ((unsigned long )i < sizeof(addr) / sizeof(addr[0]))) {
#line 413
      daemon_assert_fail("i < sizeof(addr)/sizeof(addr[0])", "ftp_command.c", 413,
                         "parse_host_port_long");
    }
#line 414
    s = parse_number(& tmp, s, 255);
#line 415
    addr[i] = (unsigned char )tmp;
#line 416
    if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 417
      return ((char const   *)((void *)0));
    }
#line 419
    if ((int const   )*s != 44) {
#line 420
      return ((char const   *)((void *)0));
    }
#line 422
    s ++;
#line 412
    i ++;
  }
#line 426
  s = parse_number(& port_len, s, 255);
#line 427
  if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 428
    return ((char const   *)((void *)0));
  }
#line 432
  i = 0;
#line 432
  while (i < port_len) {
#line 433
    if ((int const   )*s != 44) {
#line 434
      return ((char const   *)((void *)0));
    }
#line 436
    s ++;
#line 437
    if (! ((unsigned long )i < sizeof(port) / sizeof(port[0]))) {
#line 437
      daemon_assert_fail("i < sizeof(port)/sizeof(port[0])", "ftp_command.c", 437,
                         "parse_host_port_long");
    }
#line 438
    s = parse_number(& tmp, s, 255);
#line 439
    port[i] = (unsigned char )tmp;
#line 432
    i ++;
  }
#line 443
  if (family == 4) {
#line 444
    ((struct sockaddr *)sa)->sa_family = (sa_family_t )2;
#line 445
    if ((unsigned long )addr_len != sizeof(struct in_addr )) {
#line 446
      return ((char const   *)((void *)0));
    }
#line 448
    if (port_len != 2) {
#line 449
      return ((char const   *)((void *)0));
    }
#line 451
    memcpy((void */* __restrict  */)(& sa->sin_addr), (void const   */* __restrict  */)(addr),
           (size_t )addr_len);
#line 452
    __x = (unsigned short )(((int )port[0] << 8) + (int )port[1]);
#line 452
    __asm__  ("rorw $8, %w0": "=r" (__v): "0" (__x): "cc");
#line 452
    sa->sin_port = __v;
  } else {
#line 468
    ((struct sockaddr *)sa)->sa_family = (sa_family_t )-1;
  }
#line 472
  return (s);
}
}
#line 475 "ftp_command.c"
static char const   *parse_host_port_ext(sockaddr_storage_t *sa , char const   *s ) 
{ 
  int delimeter ;
  int family ;
  char *p ;
  int len ;
  char addr_str[256] ;
  int port ;
  char *tmp___0 ;
  struct in_addr in_addr ;
  int tmp___1 ;
  unsigned short __v ;
  unsigned short __x ;

  {
#line 485
  if ((int const   )*s < 33) {
#line 486
    return ((char const   *)((void *)0));
  } else
#line 485
  if ((int const   )*s > 126) {
#line 486
    return ((char const   *)((void *)0));
  }
#line 488
  delimeter = (int )*s;
#line 489
  s ++;
#line 492
  if ((int const   )*s == 49) {
#line 493
    family = 2;
  } else {
#line 501
    return ((char const   *)((void *)0));
  }
#line 503
  s ++;
#line 504
  if ((int const   )*s != (int const   )delimeter) {
#line 505
    return ((char const   *)((void *)0));
  }
#line 507
  s ++;
#line 510
  tmp___0 = __builtin_strchr((char *)s, delimeter);
#line 510
  p = tmp___0;
#line 511
  if ((unsigned long )p == (unsigned long )((void *)0)) {
#line 512
    return ((char const   *)((void *)0));
  }
#line 514
  len = (int )(p - (char *)s);
#line 515
  if ((unsigned long )len >= sizeof(addr_str)) {
#line 516
    return ((char const   *)((void *)0));
  }
#line 518
  memcpy((void */* __restrict  */)(addr_str), (void const   */* __restrict  */)s,
         (size_t )len);
#line 519
  addr_str[len] = (char )'\000';
#line 520
  s = (char const   *)(p + 1);
#line 523
  s = parse_number(& port, s, 65535);
#line 524
  if ((unsigned long )s == (unsigned long )((void *)0)) {
#line 525
    return ((char const   *)((void *)0));
  }
#line 527
  if ((int const   )*s != (int const   )delimeter) {
#line 528
    return ((char const   *)((void *)0));
  }
#line 530
  s ++;
#line 538
  tmp___1 = inet_aton((char const   *)(addr_str), & in_addr);
#line 538
  if (tmp___1 == 0) {
#line 539
    return ((char const   *)((void *)0));
  }
#line 548
  sa->sin_addr = in_addr;
#line 569
  ((struct sockaddr *)sa)->sa_family = (sa_family_t )family;
#line 570
  __x = (unsigned short )port;
#line 570
  __asm__  ("rorw $8, %w0": "=r" (__v): "0" (__x): "cc");
#line 570
  sa->sin_port = __v;
#line 573
  return (s);
}
}
static const char *parse_number(int *num, const char *s, int max_num)
{
    int tmp;
    int cur_digit;

    ((s != 
   ((void *)0)
   ) ? 0 : (daemon_assert_fail("s != ((void *)0)", "ftp_command.c", 584, __func__)));
    ((num != 
   ((void *)0)
   ) ? 0 : (daemon_assert_fail("num != ((void *)0)", "ftp_command.c", 585, __func__)));


    if (!
        ((*__ctype_b_loc ())[(int) ((
        *s
        ))] & (unsigned short int) _ISdigit)
                   ) {
        return 
              ((void *)0)
                  ;
    }
    tmp = (*s - '0');
    s++;


    while (
          ((*__ctype_b_loc ())[(int) ((
          *s
          ))] & (unsigned short int) _ISdigit)
                     ) {
        cur_digit = (*s - '0');


        if ((max_num - cur_digit) < (tmp * 10)) {
     return 
           ((void *)0)
               ;
 }

        tmp *= 10;
 tmp += cur_digit;
        s++;
    }

    ((tmp >= 0) ? 0 : (daemon_assert_fail("tmp >= 0", "ftp_command.c", 608, __func__)));
    ((tmp <= max_num) ? 0 : (daemon_assert_fail("tmp <= max_num", "ftp_command.c", 609, __func__)));


    *num = tmp;
    return s;
}
#line 616 "ftp_command.c"
static char const   *parse_offset(off_t *ofs , char const   *s ) 
{ 
  off_t tmp_ofs ;
  char const   *__cil_ret8 ;
  off_t **__cil_pp_ofs  = & ofs;
  char const   **__cil_pp_s  = & s;
  off_t *__cil_pp_tmp_ofs  = & tmp_ofs;
  char const   **__cil_pp___cil_ret8  = & __cil_ret8;
  off_t **__cil_fp_ofs  = & ofs;
  char const   **__cil_fp_s  = & s;
  off_t *__cil_fp_tmp_ofs  = & tmp_ofs;
  char const   **__cil_fp___cil_ret8  = & __cil_ret8;
  off_t max_ofs_ssa_1 ;
  unsigned short const   **tmp_ssa_1 ;
  off_t tmp_ofs_ssa_1 ;
  char const   *s_ssa_1 ;
  int retflag9_ssa_1 ;
  off_t *ofs_ssa_1 ;
  char const   *s_ssa_2 ;
  off_t tmp_ofs_ssa_2 ;
  char const   *__cil_ret8_ssa_1 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  char __cil_tmp34 ;
  unsigned short const   *__cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned short const   *__cil_tmp37 ;
  unsigned short __cil_tmp38 ;
  int __cil_tmp39 ;
  char __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;

  {
  {
#line 622
  __cil_tmp27 = (unsigned long )ofs != (unsigned long )((void *)0);
#line 622
  if (! __cil_tmp27) {
    {
#line 622
    daemon_assert_fail("ofs != ((void *)0)", "ftp_command.c", 622, "parse_offset");
    }
  }
  }
  {
#line 623
  __cil_tmp28 = (unsigned long )s != (unsigned long )((void *)0);
#line 623
  if (! __cil_tmp28) {
    {
#line 623
    daemon_assert_fail("s != ((void *)0)", "ftp_command.c", 623, "parse_offset");
    }
  }
  }
  {
#line 626
  __cil_tmp29 = sizeof(off_t ) == 8UL;
#line 626
  if (__cil_tmp29) {
    {
#line 627
    max_ofs_ssa_1 = (off_t )9223372036854775807LL;
    }
  } else {
    {
#line 628
    __cil_tmp30 = sizeof(off_t ) == 4UL;
#line 628
    if (__cil_tmp30) {
      {
#line 629
      max_ofs_ssa_1 = (off_t )2147483647LL;
      }
    } else {
      {
#line 630
      __cil_tmp31 = sizeof(off_t ) == 2UL;
#line 630
      if (__cil_tmp31) {
        {
#line 631
        max_ofs_ssa_1 = (off_t )32767LL;
        }
      } else {
        {
#line 633
        max_ofs_ssa_1 = (off_t )0;
        }
      }
      }
    }
    }
  }
  }
  {
#line 635
  __cil_tmp32 = max_ofs_ssa_1 != 0L;
#line 635
  if (! __cil_tmp32) {
    {
#line 635
    daemon_assert_fail("max_ofs != 0", "ftp_command.c", 635, "parse_offset");
    }
  }
  }
  {
#line 638
  tmp_ssa_1 = __ctype_b_loc();
  }
  {
#line 638
  __cil_tmp34 = *s;
#line 638
  __cil_tmp35 = *tmp_ssa_1;
#line 638
  __cil_tmp36 = (int )__cil_tmp34;
#line 638
  __cil_tmp37 = __cil_tmp35 + __cil_tmp36;
#line 638
  __cil_tmp38 = *__cil_tmp37;
#line 638
  __cil_tmp39 = (int const   )__cil_tmp38;
#line 638
  __cil_tmp33 = __cil_tmp39 & 2048;
#line 638
  if (__cil_tmp33) {
    {
#line 641
    __cil_tmp40 = *s;
#line 641
    __cil_tmp41 = (int const   )__cil_tmp40;
#line 641
    __cil_tmp42 = __cil_tmp41 - 48;
#line 641
    tmp_ofs_ssa_1 = (off_t )__cil_tmp42;
#line 642
    s_ssa_1 = s + 1;
    }
    {
    {
    *__cil_fp_ofs = ofs;
    *__cil_fp_s = s_ssa_1;
    *__cil_fp_tmp_ofs = tmp_ofs_ssa_1;
    *__cil_fp___cil_ret8 = __cil_ret8;
#line 645
    retflag9_ssa_1 = parse_offset_cil_lr_1(__cil_pp_ofs, __cil_pp_s, __cil_pp_tmp_ofs,
                                           __cil_pp___cil_ret8, max_ofs_ssa_1);
    ofs_ssa_1 = *__cil_fp_ofs;
    s_ssa_2 = *__cil_fp_s;
    tmp_ofs_ssa_2 = *__cil_fp_tmp_ofs;
    __cil_ret8_ssa_1 = *__cil_fp___cil_ret8;
    }
#line 645
    if (retflag9_ssa_1) {
#line 645
      return (__cil_ret8_ssa_1);
    } else {
      {
#line 659
      *ofs_ssa_1 = tmp_ofs_ssa_2;
      }
#line 660
      return (s_ssa_2);
    }
    }
  } else {
#line 639
    return ((char const   *)0);
  }
  }
}
}
int parse_offset_cil_lr_1(off_t **__cil_ap_ofs , char const   **__cil_ap_s , off_t *__cil_ap_tmp_ofs ,
                          char const   **__cil_ap___cil_ret8 , off_t max_ofs ) 
{ 
  unsigned short const   **tmp___0_ssa_1 ;
  int cur_digit_ssa_1 ;
  int retflag8_ssa_1 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  char const   *__cil_tmp14 ;
  char __cil_tmp15 ;
  unsigned short const   *__cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned short const   *__cil_tmp18 ;
  unsigned short __cil_tmp19 ;
  int __cil_tmp20 ;
  char const   *__cil_tmp21 ;
  char __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  off_t __cil_tmp25 ;
  off_t __cil_tmp26 ;
  off_t __cil_tmp27 ;
  off_t __cil_tmp28 ;
  off_t __cil_tmp29 ;
  char const   *__cil_tmp30 ;

  {
  {
#line 645
  tmp___0_ssa_1 = __ctype_b_loc();
  }
  {
#line 645
  __cil_tmp14 = *__cil_ap_s;
#line 645
  __cil_tmp15 = *__cil_tmp14;
#line 645
  __cil_tmp16 = *tmp___0_ssa_1;
#line 645
  __cil_tmp17 = (int )__cil_tmp15;
#line 645
  __cil_tmp18 = __cil_tmp16 + __cil_tmp17;
#line 645
  __cil_tmp19 = *__cil_tmp18;
#line 645
  __cil_tmp20 = (int const   )__cil_tmp19;
#line 645
  __cil_tmp12 = __cil_tmp20 & 2048;
#line 645
  if (__cil_tmp12) {
    {
#line 646
    __cil_tmp21 = *__cil_ap_s;
#line 646
    __cil_tmp22 = *__cil_tmp21;
#line 646
    __cil_tmp23 = (int const   )__cil_tmp22;
#line 646
    __cil_tmp24 = __cil_tmp23 - 48;
#line 646
    cur_digit_ssa_1 = (int )__cil_tmp24;
    }
    {
#line 649
    __cil_tmp25 = *__cil_ap_tmp_ofs;
#line 649
    __cil_tmp26 = max_ofs - (off_t )cur_digit_ssa_1;
#line 649
    __cil_tmp27 = __cil_tmp25 * 10L;
#line 649
    __cil_tmp13 = __cil_tmp26 < __cil_tmp27;
#line 649
    if (__cil_tmp13) {
      {
      {
#line 650
      *__cil_ap___cil_ret8 = (char const   *)0;
      }
      return (1);
      }
    } else {
      {
#line 653
      __cil_tmp28 = *__cil_ap_tmp_ofs;
#line 653
      *__cil_ap_tmp_ofs = __cil_tmp28 * 10L;
#line 654
      __cil_tmp29 = *__cil_ap_tmp_ofs;
#line 654
      *__cil_ap_tmp_ofs = __cil_tmp29 + (off_t )cur_digit_ssa_1;
#line 655
      __cil_tmp30 = *__cil_ap_s;
#line 655
      *__cil_ap_s = __cil_tmp30 + 1;
      }
      {
      retflag8_ssa_1 = parse_offset_cil_lr_1(__cil_ap_ofs, __cil_ap_s, __cil_ap_tmp_ofs,
                                             __cil_ap___cil_ret8, max_ofs);
      }
      return (retflag8_ssa_1);
    }
    }
  } else {
    return (0);
  }
  }
}
}

