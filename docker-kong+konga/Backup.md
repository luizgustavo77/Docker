## Backup Postgres
* **Backup your databases**
    * docker exec -t your-db-container pg_dumpall -c -U postgres > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
* **Restore your databases**
    * cat your_dump.sql | docker exec -i your-db-container psql -U postgres