
oc get template -n openshift | grep mysql
oc get template mysql-persistent -o yaml  -n openshift > mysql-persistent-template.yaml
oc process --parameters  -f mysql-persistent-template.yaml
oc process -p DATABASE_SERVICE_NAME=mysqldb  -f mysql-persistent-template.yaml > mysql-persistent-template-processed.yaml
oc create -f mysql-persistent-template-processed.yaml 
