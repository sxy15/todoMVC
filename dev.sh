 #!/bin/bash

 # 停止并移除所有与 docker-compose 配置相关的容器、网络、卷和镜像
 # --rmi local: 移除本地构建的镜像
 # --volumes: 移除与容器相关的卷
 # --remove-orphans: 移除未在 docker-compose 文件中定义的容器
 docker-compose down --rmi local --volumes --remove-orphans

 # 根据 docker-compose 文件启动容器
 docker-compose up

 # 强制删除所有停止的容器
 docker container prune -f