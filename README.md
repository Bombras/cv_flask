### Run CV app locally:
navigate to docker_app/app
run command: `gunicorn cv_main:app`

### on VPS:
I have minimal VPS with 5GB storage only.
- start up VPS with Alpine 3.18
- install ssh
    - run following commands:
        - `apk update`
        - `apk add --no-cache openssh`
- install Docker
    - `apk add --update docker openrc`
    - `rc-update add docker boot`
    - `rc-update add docker default`
    - `service docker start`
    - `apk add docker-cli-compose`
- install Git
    - `apk add --no-cache git`
- git clone cv_flask
- navigate to cv_flask
- run `sudo docker compose build` to create docker image
- run `sudo docker compose up -d` to run the app
- ask for certificate
    - `docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d smarda.name`
- go to docker nginx container and uncomment the block in nginx.conf with the 443(ssl) part
- restart docker containers to load certificates `docker compose restart`

After 3 months run this to renew certificates
-`sudo docker compose run --rm certbot renew`


Usefull Docker commands:
- docker ps -a
- docker stop $(docker ps -a -q)
- docker rm $(docker ps -a -q)
- docker images purge

go to smarda.name

Source: https://mindsers.blog/en/post/https-using-nginx-certbot-docker/


