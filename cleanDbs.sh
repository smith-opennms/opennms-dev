#!/bin/sh
for DB in $(psql -U postgres -c "SELECT datname FROM pg_database WHERE datistemplate = false AND datname LIKE 'opennms_test_%';" | grep opennms_test)
do
  echo "Dropping $DB"
  psql -U postgres -c "DROP DATABASE $DB"
done

