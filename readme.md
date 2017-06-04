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


##

Convert to static site (docker container must be running)
```
wget -P ./dist -mpck --user-agent="" -e robots=off  -E  http://localhost:8000/
```

## Github pages
 todo


