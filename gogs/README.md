![](https://visitor-badge.glitch.me/badge?page_id=Yoas1.gogs)</br>
# Gogs

Run with command:<br>
```
docker container run -it --name gogs -p 3000:3000 -p 122:22 yoas1/gogs:0.12.10
```

For arm64 run:<br>
```
docker container run -it --name gogs -p 3000:3000 -p 122:22 yoas1/gogs:0.12.10-arm64
```

Add volumes to logs and dags:</br>
**Logs:** /gogs/log</br>
**Repositories:** /root/gogs-repositories<br>
**Data:** /data


</br></br>

Go to: http://localhost:3000/install</br>

