Prereqs:
1. Install docker

To set up docker images:

1. Run `docker build -t climb-rails -f dockerfiles/Dockerfile.rails .`
1. `cp env-example .env`
1. Edit newly created .env file to set a random `SECRET_TOKEN`
1. Run `docker volume create --name climb-rails-postgres` and `docker volume create --name climb-rails-redis`

To start the server, run:


1. `docker compose up --build` on the first run. `--build` may be omited after you get it to work once.
2. `docker­ compose run climb-rails rake db:migrate`


The server can be accessed on http://localhost:8020