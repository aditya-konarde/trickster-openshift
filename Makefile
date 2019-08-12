
bootstrap-trickster-dev:
	kubectl config use-context minishift
	kubectl create -f configmap.yaml
	kubectl create -f deployment.yaml
	kubectl create -f service.yaml

start-minishift:
	minishift start
	
delete:
	kubectl config use-context minishift
	kubectl delete deployment 

.PHONY: bootstrap-trickster-dev start-minikube delete