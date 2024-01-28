# docker-vue-pure-admin
docker-vue-pure-admin


# 克隆 vue-pure-admin
git clone https://gitee.com/yiming_chang/vue-pure-admin.git app

# 运行 docker-compose
docker-compose up -d

# 等待 容器内 pnpm 编译

# 访问页面
IP:63101
http://localhost:63101

# 从上游更新源码
cd app
<br/>
git pull

# 容器内 从上游更新源码
docker exec -it docker-vue-pure-admin /bin/sh -c "pwd && ls -alh &&git pull"
<br/>
<br/>
<br/>
容器内更新源码
<b/r>
docker exec -it docker-vue-pure-admin /bin/sh -c "git pull"
