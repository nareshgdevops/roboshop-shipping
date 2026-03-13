mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} <schema.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} <app-user.sql
mysql -h $DB_HOST -u${DB_USER} -p${DB_PASS} <master-data.sql