#!/bin/bash
set -e
set -x   # <-- prints every command
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl <schema.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl <app-user.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} --ssl <master-data.sql
exec java -jar /app/shipping.jar
