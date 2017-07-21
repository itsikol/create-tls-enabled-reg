##clone this repo
##change the CHANGEME values in following files-
	- copy_certs.sh
	- in.req
##run create_certs.sh for creating self signed ssl certificate
	- "chmod +x create_certs.sh"
	- "./create_certs.sh"
##run copy_certs.sh
	- "chmod +x copy_certs.sh"
	- "./copy_certs.sh"
##create Replication Controller for registry by executing following command
	- "kubectl create -f reg_controller.yaml"
##wait untill rc is ready, you can check it by executing following command
	- "kubectl get rc -n kube-system"
##Expose the registry using NodePorts as a service
	- "kubectl create -f reg_service.yaml"
##Registry is ready and exposed on NodeIP and port 31000, you can change it by changing in reg_controller.yaml
