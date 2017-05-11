/* 
 * $Id: ftp_command.h,v 1.5 2001/03/20 00:21:11 shane Exp $
 *
 * The following comands are parsed:
 *
 * USER <SP> <username>
 * PASS <SP> <password>
 * CWD  <SP> <pathname> 
 * CDUP
 * QUIT
 * PORT <SP> <host-port>
 * LPRT <SP> <host-port-long>
 * EPRT <SP> <host-port-ext>
 * PASV
 * LPSV
 * EPSV [ <SP> <optional-number-or-all> ]
 * TYPE <SP> <type-code>
 * STRU <SP> <structure-code>
 * MODE <SP> <mode-code>
 * RETR <SP> <pathname>
 * STOR <SP> <pathname>
 * PWD
 * LIST [ <SP> <pathname> ]
 * NLST [ <SP> <pathname> ]
 * SYST
 * HELP [ <SP> <string> ]
 * NOOP
 * REST <SP> <offset>
 */

#ifndef FTP_COMMAND_H
#define FTP_COMMAND_H

#include <netinet/in.h>
#include <limits.h>
#include <sys/types.h>
#include "af_portability.h"

/* special macro for handling EPSV ALL requests */
#define EPSV_ALL (-1)

/* maximum possible number of arguments */
#define MAX_ARG 2

/* maximum string length */
#define MAX_STRING_LEN PATH_MAX

typedef struct {
    char command[5];
    int num_arg;
    union {
        char string[MAX_STRING_LEN+1];
        sockaddr_storage_t host_port;
        int num;
	off_t offset;
    } arg[MAX_ARG];
} ftp_command_t;


int ftp_command_parse(const char *input, ftp_command_t *cmd);

#endif /* FTP_COMMAND_H */

