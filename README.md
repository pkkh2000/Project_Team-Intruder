## YAML File Code

```
version: "3.8"
services:
  pehla:
    image: ubuntu:20.04
    container_name: xyz1 
    command: sleep 600

  dusra:
    image: alpine
    container_name: abc
    command: sleep 100
```

## DOCKER-COMPOSE COMMANDS
```
docker-compose up -d
docker-compose stop 
docker-compose start
docker-compose down
docker-compose images
docker-compose ps 
```

## DOCKER-COMPOSE RUN OUTPUT
<img src="docker-yaml.png">

