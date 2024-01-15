sudo service docker start  // nebo // dockerd
gunicorn -w 2 'cv_main:app'


sudo docker build -t cv_flask .


sudo docker ps -a
sudo docker images

sudo docker rmi -- delete images
sudo docker rm --delete containers

sudo docker run -t -d image_id
sudo docker logs 16010ea5ad1c


sudo docker exec -it container_id bash
docker system prune