### Run CV app locally:
navigate to docker_app/app$ 
run command: gunicorn cv_main:app

### on VPS:
I have minimal VPS with 5GB storage only.
- start up VPS with Alpine 3.18
- install ssh
    - run following commands:
        - apk update
        - apk add --no-cache openssh
- install Docker
    - apk add --update docker openrc
    - rc-update add docker boot
    - rc-update add docker default
    - service docker start
    - apk add docker-cli-compose
- install Git
    - apk add --no-cache git
- git clone cv_flask
- navigate to cv_flask
- run `sudo docker compose build` to create docker image
- run `sudo docker compose up -d` to run the app

go to smarda.name


Source: https://mindsers.blog/en/post/https-using-nginx-certbot-docker/

To renew certificates run:
`sudo docker compose run --rm certbot renew`
