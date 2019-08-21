# Telsir_microservices



# HW 12 - Технология контейнеризации. Введение в Docker

Первая домашняя работа по Docker. Выполнены задания из методички

**!!!! Не ставить Docker через snap !!!!**

Установка docker под Ubuntu: `https://docs.docker.com/install/linux/docker-ce/ubuntu/`
Установка docker-machine `https://docs.docker.com/machine/install-machine/`

Для создания хоста используем `docker-machine create --driver google  --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts  --google-machine-type n1-standard-1  --google-zone europe-west1-b  docker-host` \
Для удаления хоста используем `docker-machine rm docker-host`
