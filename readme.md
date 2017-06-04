# static-wordpress-template



```
username: wordpress
password: wordpress
```



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
docker exec -i staticwordpresstemplate_db_1 mysqldump -uroot -psomewordpress --all-databases > dump.sql
```


import 
```
docker exec -i staticwordpresstemplate_db_1 mysql -uroot -psomewordpress < dump.sql
```

## Building Static Site

Convert to static site (docker container must be running)
```
wget -k -K  -E -r -l 10 -p -N -F -nH -P ./docs/ -mpck --user-agent="" -e robots=off  -E  http://localhost:8000/
```

## Deploy

### Github pages
```
./deploy.zsh
```

