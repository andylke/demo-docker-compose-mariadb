`docker-compose up -d`

```
[+] Running 12/12
 - mariadb Pulled                                                                                                                                                                       23.9s
   - 405f018f9d1d Pull complete                                                                                                                                                          4.8s
   - 7a85079b8234 Pull complete                                                                                                                                                          4.9s
   - 579c7ff691b1 Pull complete                                                                                                                                                          5.1s
   - 4976663b5d6d Pull complete                                                                                                                                                          5.2s
   - 169024b1fb13 Pull complete                                                                                                                                                          5.3s
   - c0ffe8ce897f Pull complete                                                                                                                                                          5.7s
   - b583c09d23c3 Pull complete                                                                                                                                                          5.8s
   - 9b9f0c08d08f Pull complete                                                                                                                                                          6.0s
   - 9cd51f984586 Pull complete                                                                                                                                                         13.8s
   - d9f506bb8aca Pull complete                                                                                                                                                         13.9s
   - 24d689f79ba4 Pull complete                                                                                                                                                         14.0s
[+] Running 2/2
 - Network demo-docker-compose-mariadb_default  Created                                                                                                                                  0.0s
 - Container mariadb                            Started                                                                                                                                  2.6s
```

`docker compose logs mysql --follow`

```
mariadb  | 2022-07-25 07:27:42+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/init-script.sql
mariadb  |
mariadb  |
mariadb  | 2022-07-25 07:27:42+00:00 [Note] [Entrypoint]: Stopping temporary server
mariadb  | 2022-07-25  7:27:42 0 [Note] mariadbd (initiated by: root[root] @ localhost []): Normal shutdown
mariadb  | 2022-07-25  7:27:42 0 [Note] InnoDB: FTS optimize thread exiting.
mariadb  | 2022-07-25  7:27:43 0 [Note] InnoDB: Starting shutdown...
mariadb  | 2022-07-25  7:27:43 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
mariadb  | 2022-07-25  7:27:43 0 [Note] InnoDB: Buffer pool(s) dump completed at 220725  7:27:43
mariadb  | 2022-07-25  7:27:43 0 [Note] InnoDB: Removed temporary tablespace data file: "./ibtmp1"
mariadb  | 2022-07-25  7:27:43 0 [Note] InnoDB: Shutdown completed; log sequence number 48589; transaction id 22
mariadb  | 2022-07-25  7:27:43 0 [Note] mariadbd: Shutdown complete
mariadb  |
mariadb  | 2022-07-25 07:27:43+00:00 [Note] [Entrypoint]: Temporary server stopped
mariadb  |
mariadb  | 2022-07-25 07:27:43+00:00 [Note] [Entrypoint]: MariaDB init process done. Ready for start up.
```

```
mariadb  | 2022-07-25  7:27:44 0 [Note] mariadbd: ready for connections.
mariadb  | Version: '10.8.3-MariaDB-1:10.8.3+maria~jammy'  socket: '/run/mysqld/mysqld.sock'  port: 3306  mariadb.org binary distribution
```

`mysql -h localhost -P 3306 -u mariadbuser -pmariadbuserpassword -e "select * from demo.demo_table"`

```
mysql: [Warning] Using a password on the command line interface can be insecure.
+----+------+
| id | text |
+----+------+
|  1 | Demo |
+----+------+
```

`docker-compose down`

```
[+] Running 2/2
 - Container mariadb                            Removed                                                                                                                                  0.6s
 - Network demo-docker-compose-mariadb_default  Removed                                                                                                                                  0.2s
```
