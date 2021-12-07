

docker build -t myreact:latest .

docker run --name myreact -d -p 3000:3000 myreact:latest

docker stop c176b49208ab


docker ps -a




docker tag fb73330ba940 auyong/firstrepo:1.0
docker push auyong/firstrepo:1.0





