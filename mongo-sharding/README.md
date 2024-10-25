# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
cd mongo-sharding
docker compose -f compose.yaml up -d
```

Заполняем mongodb данными

```shell
./scripts/mongo-config-init.sh
./scripts/mongo-shard1-init.sh
./scripts/mongo-shard2-init.sh
./scripts/mongo-router-init.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs