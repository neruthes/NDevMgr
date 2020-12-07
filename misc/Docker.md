# Docker

## Hosts

- NDPS1

## Host: NDPS1

Image               | Name                  | IP Address    | Mount Points          | Host Port | Container Port
------------------- | --------------------- | ------------- | --------------------- | --------- | --------------
nextcloud           | n.nextcloud1          | 172.17.0.5    | /var/www/html         |           |
maraidb             | n.mariadb2            | 172.17.0.2    | /var/lib/mysql        | 16001     | 3306
