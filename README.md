# Telsir_microservices
# HW 15 - Gitlab

Пишем на энсибле. Сейчас нет времени разбираться в модуле GCP и динамик инвенторях, так, что в файле ansible/base/files/docker-compose.yml необходимо измений IP при настройке нового хоста вручную 

Если IP у пересоздаваемого хоста не менялся, запускаем `ssh-keygen -f /home/telsir/.ssh/known_hosts`

# HW14 - Docker Compose

Установка: `https://docs.docker.com/compose/install/#install-compose`

Env_variables: `https://docs.docker.com/compose/env-file/`

Для указания отличного от дефолтного имени проекта - необходимо использовать ключ `-p %value%`

    [telsir@Heaven src]$ docker-compose up -d
    WARNING: Some networks were defined but are not used by any service: reddit
    Starting src_comment_1 ... done
    Starting src_ui_1      ... done
    Starting src_post_db_1 ... done
    Starting src_post_1    ... done
    [telsir@Heaven src]$ sudo docker kill $(sudo docker ps -q)
    3687bb7b2111
    3880f9efc782
    1e64cd5cf385
    fb8280ed3759
    [telsir@Heaven src]$ docker-compose -p trustme up -d
    WARNING: Some networks were defined but are not used by any service: reddit
    Creating network "trustme_back_net" with the default driver
    Creating network "trustme_front_net" with the default driver
    Creating volume "trustme_post_db" with default driver
    Creating trustme_ui_1      ... done
    Creating trustme_post_1    ... done
    Creating trustme_post_db_1 ... done
    Creating trustme_comment_1 ... done



# HW13 - Docker-образы Микросервисы

Выполнена основная часть домашней работы по заданиям. 

При сборке контейнера post-py в докерфайл добавлена следующая строчка: `RUN apk add --update gcc python python-dev py-pip build-base` для корректной работы контейнера


# HW 12 - Технология контейнеризации. Введение в Docker

Первая домашняя работа по Docker. Выполнены задания из методички

**!!!! Не ставить Docker через snap !!!!**

Установка docker под Ubuntu: `https://docs.docker.com/install/linux/docker-ce/ubuntu/`
Установка docker-machine `https://docs.docker.com/machine/install-machine/`

Для создания хоста используем `sudo docker-machine create --driver google --google-project docker-248708  --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts  --google-machine-type n1-standard-1  --google-zone europe-west1-b  docker-host` \
Для удаления хоста используем `docker-machine rm docker-host`
