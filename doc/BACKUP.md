# Backups

Go inside the database container and create a backup.

```shell
docker container exec clam_db_1 pg_dump -U postgres myapp_development --no-owner -f /clam_development.sql
```

Copy the backup file into your working directory

```shell
docker cp clam_db_1:/clam_development.sql .
```

Create a timestamped copy of the file and put it inside the backups directory.

```shell
cp clam_development.sql backups/clam_development-$(date +"%F-%H-%M").sql
```
