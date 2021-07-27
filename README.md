# KuberNates

## Installing MiniKube 
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

## Version Check 
```
minikube version
```

## Start MiniKube
```
minikube  start --driver=docker
```

## Install Kubectl (If Not install by MiniKube)
```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```
## Kubectl health check
```
kubectl version --client
```

## Kubectl Node Check
```
kubectl   get  nodes
```

