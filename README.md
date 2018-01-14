# docker-c9-ide

Run Cloud9 Web-IDE on your own host with docker.

## Build docker image and run docker container

Substitute any login and password instead of YOUR_LOGIN and YOUR_PASSWORD.
YOUR_WORKSPACE replace with named volume name or an absolute path, e.g. ``/opt/data``.

```sh
curl https://raw.githubusercontent.com/vit/docker-c9-ide/master/Dockerfile | docker build -t c9 -
docker run -d --name c9 -it --restart always -p 8080:8080 -e C9_USERNAME=YOUR_LOGIN -e C9_PASSWORD=YOUR_PASSWORD -v YOUR_WORKSPACE:/opt/workspace c9
```

## Open ide url in your browser

```
http://<DOMAIN NAME or IP of your host>:8080/
```

For example:
```
http://localhost:8080/
```
