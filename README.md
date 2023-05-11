Prereqs:
1. Install docker

To set up docker env:

1. `cp env-example .env`
1. Edit newly created .env file to set a random `SECRET_TOKEN`
1. Create a backend/config/master.key. This gets used for credential decoding.
1. Run `docker volume create --name climb-rails-postgres` and `docker volume create --name climb-rails-redis` to create the database volumes
1. Run `docker compose up --build`. This will build the docker images and try to start the various containers. The outputted logs will contain errors for some services. That is fine, just ctrl+c out.
1. Run `docker compose run climb-rails rails db:create` to create the database. Then run `docker compose run climb-rails rails db:migrate` to run all of the migrations.
1. Get some nice node_modules for react, with `docker compose run climb-react npm install`

To start the server, run:

`docker compose up`


The backend server can be accessed on http://localhost:8020

The frontend server can be accessed on http://localhost:3000

Needed to do an npm install from the container