k8s version 1.14.x
minikube start --vm-driver=hyperkit

kubectl config current-context

gcloud container clusters get-credentials pybr-demo-cluster --zone=us-central1-a

kubectl config current-context

kubectl apply -f kubernetes/configmap.yaml
kubectl apply -f kubernetes/secrets.yaml
kubectl apply -f kubernetes/deployment.yaml
