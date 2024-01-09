The project takes Alpine Linux image and installs nginx web server. Install docker- https://docs.docker.com/engine/install/

To run the project, run the following commands.

- docker build -t mynginx .

- docker run -d -p 9000:80 mynginx

- site available at - http://localhost:9000/site/index.html
