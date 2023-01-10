#安装kong
https://docs.konghq.com/gateway/latest/install-and-run/docker/

curl -i http://localhost:8001/

连接上数据库,并创建databasename=konga
cd konga
npm install
node ./bin/konga.js  prepare --adapter postgres --uri postgresql://postgres:123456@localhost:5432/konga
node app.js --prod
open http://127.0.0.1:1337



