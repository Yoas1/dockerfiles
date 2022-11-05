![](https://visitor-badge.glitch.me/badge?page_id=Yoas1.flask_base_docker_image)</br>

# flask_base_docker_image

## For edit web-app files:
</br>
Clone this repo, and create volume:</br>

```
docker container run -it -v <path/to/clone/repo>/flask_base_docker_image:/App -p 5000:5000 yoas1/flask:1.3
```

**Or**</br>

```
docker container run -it -v <path/to/clone/repo>/flask_base_docker_image:/App -p 5000:5000 ghcr.io/yoas1/flask:1.0
```

Go to: http://localhost:5000
