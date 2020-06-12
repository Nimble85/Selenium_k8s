# Selenium_k8s


```
Prepare kubernetes config files for SeleniumGrid deployment.
Please find https://github.com/SeleniumHQ/docker-selenium for additional info.
Grid should consist of 1 hub node and 2 Filefox nodes.
Kubernetes related info:
- namespace: selenium-grid;
- memory limitation: 8Gb RAM.
```
# For create run the commands: 
* create namespace
```
kubectl create namespace selenium-grid
```
* create env
```
kubectl create -n selenium-grid --filename=selenium-node-firefox-deployment.yaml
kubectl create -n selenium-grid --filename=selenium-hub-deployment.yaml
kubectl create -n selenium-grid --filename=selenium-hub-svc.yaml
```

minikube service -n selenium-grid  selenium-hub

|---------------|--------------|-------------|-----------------------------|
|   NAMESPACE   |     NAME     | TARGET PORT |             URL             |
|---------------|--------------|-------------|-----------------------------|
| selenium-grid | selenium-hub | port0/4444  | http://192.168.99.101:30322 |
|---------------|--------------|-------------|-----------------------------|
* Opening service selenium-grid/selenium-hub in default browser...
