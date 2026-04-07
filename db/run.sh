#!/bin/bash
set -e
set -x   # <-- prints every command
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl-mode=REQUIRED <schema.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl-mode=REQUIRED <app-user.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl-mode=REQUIRED <master-data.sql
exec java -jar /app/shipping.jar
