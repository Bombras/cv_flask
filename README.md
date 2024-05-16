on VPS:
- install Docker
- git clone cv_flask
- navigate to cv_flask
- run `sudo docker compose build`
- run `sudo docker compose up -d`

go to smarda.name 


Source: https://mindsers.blog/en/post/https-using-nginx-certbot-docker/

To renew certificates run:
`sudo docker compose run --rm certbot renew`
