

oc new-app --name mynginx -l name=test-label  docker.io/bitnami/nginx 
oc expose svc mynginx --name custom-route-name
