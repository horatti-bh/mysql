#!/bin/bash

if [[ -z "${MYSQL_HOST}" || -z "${MYSQL_PASSWORD}" ]]; then
  echo "MYQL_HOST and MYSQL_PASSWORD variables are needed"
  exit 1
fi

mysql -h ${MYSQL_HOST} -uroot -p${MYSQL_PASSWORD} </data/ratings.sql
mysql -h ${MYSQL_HOST} -uroot -p${MYSQL_PASSWORD} </data/shipping.sql