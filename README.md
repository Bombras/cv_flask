### Run CV app locally:
navigate to docker_app/app$ 
run command: gunicorn cv_main:app

### on VPS:
- install Docker
- git clone cv_flask
- navigate to cv_flask
- run `sudo docker compose build` to create docker image
- run `sudo docker compose up -d` to run the app

go to smarda.name


Source: https://mindsers.blog/en/post/https-using-nginx-certbot-docker/

To renew certificates run:
`sudo docker compose run --rm certbot renew`
