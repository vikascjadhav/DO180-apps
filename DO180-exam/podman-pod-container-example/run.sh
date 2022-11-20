
podman pod  create --name nginx-pod -p 8080:8080

podman run -d --name nginx-container --pod nginx-pod docker.io/bitnami/nginx

podman ps 
podman pod ps 
podman port -l
curl localhost:8080
