# static-wordpress-template

## Requirements

- docker 
- wget
    `brew install wget`



## Getting it running

Build a wordpress images with the zip extension

```
docker build -t wordpress-zip ./wordpress-zip
```

Start 
```
docker-compose up -d
```

Stop
```
docker-compose down
```

## Backup DB

export
```
docker exec -i mysql-wordpress-playground mysqldump -uroot -proot --all-databases > dump.sql
```


import 
```
docker exec -i mysql-wordpress-playground mysql -uroot -proot < dump.sql
```

## Building Static Site

Convert to static site (docker container must be running)
```
wget -P ./dist -mpck --user-agent="" -e robots=off  -E  http://localhost:8000/
```

## Deploy

### Github pages
 todo


