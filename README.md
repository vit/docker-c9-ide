# docker-c9-ide

(substitute any login and password)

```sh
curl https://raw.githubusercontent.com/vit/docker-c9-ide/master/Dockerfile | docker build -t c9 -
docker run --name c9 -it --restart always -p 8080:8080 -e C9_USERNAME=<YOUR_LOGIN> -e C9_PASSWORD=<YOUR_PASSWORD> c9
```
