/* 
 * $Id: ftp_listener.h,v 1.11 2001/04/18 21:41:48 shane Exp $
 */

#ifndef FTP_LISTENER_H
#define FTP_LISTENER_H

#include <limits.h>
#include <pthread.h>
#include "error.h"
#include "watchdog.h"

#define DEFAULT_FTP_PORT 21

typedef struct {

    /* file descriptor incoming connections arrive on */
    int fd;

    /* maximum number of connections */
    int max_connections;

    /* current number of connections */
    int num_connections;

    /* timeout (in seconds) for connections */
    int inactivity_timeout;

    /* watchdog monitoring this listener's connections */
    watchdog_t watchdog;

    /* mutext to lock changes to this structure */
    pthread_mutex_t mutex;

    /* starting directory */
    char dir[PATH_MAX+1];

    /* boolean defining whether listener is running or not */
    int listener_running;

    /* thread identifier for listener */
    pthread_t listener_thread;

    /* end of pipe to wake up listening thread with */
    int shutdown_request_send_fd;

    /* end of pipe listening thread waits on */
    int shutdown_request_recv_fd;

    /* condition to signal thread requesting shutdown */
    pthread_cond_t shutdown_cond;

} ftp_listener_t;

int ftp_listener_init(ftp_listener_t *f, 
                      char *address, 
                      int port, 
                      int max_connections,
                      int inactivity_timeout, 
                      error_t *err);
int ftp_listener_start(ftp_listener_t *f, error_t *err);
void ftp_listener_stop(ftp_listener_t *f);

#endif /* FTP_LISTENER_H */

