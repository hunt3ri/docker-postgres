# Docker Postgres

Docker container enabling you to run postgres locally.  Useful for when you want access to tools like pg_dump, pg_restore locally.

## Running container

```bash
docker-compose run tw-postgis
```

TODO - Investigate why docker-compose UP doesn't work

## Backup Restore database

Get the name of the running container and ssh to it

```bash
docker exec -it [containerid] bash
cd data

# Backup
pg_dump -h old-server.eu-west-1.rds.amazonaws.com -U usernmae --format=c --verbose --file=mydumpfile.dmp databasename

# Restore
pg_restore -h new-server.eu-west-1.rds.amazonaws.com -U username --verbose -C -d databasename mydumpfile.dmp
```
