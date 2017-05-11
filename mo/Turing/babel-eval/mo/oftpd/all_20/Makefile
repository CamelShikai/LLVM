all:
	gplc -C "-g -w -O2 -D_REENTRANT -D_THREAD_SAFE" -L "-pthread" -o oftpd babel.pl file_list.c ftp_command.c ftp_listener.c ftp_session_b.c oftpd.c telnet_session_b.c watchdog_b.c error.c daemon_assert.c 
