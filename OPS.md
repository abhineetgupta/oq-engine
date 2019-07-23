# Overview

The configuration to run the openquake engine locally is the docker-compose.yaml file. The configuration to run the openquake engine in the cloud in the dev cluster is in the k8s folder

# Running locally with docker-compose

Building the openquake engine container
`docker-compose build`

Running the openquake engine (foreground)
`docker-compose up` # you can then access the openquake UI via browser using URL localhost:8800

Running the openquake engine (background)
`docker-compose up -d`

Bringing down the openquake engine
`docker-compose down`

To push to google cloud onec registry
`docker-compose push`

To attach volumes locally check this documentation: https://docs.docker.com/compose/compose-file/#volumes


# Running in the cloud with kubernetes

Deploying or updating the openquake container in the dev cluster
`kubectl apply -f k8s/oq.yaml`

Checking on the deployed container
`kubectl get pod -n dev|grep oq`

Getting details on the deployed container
`kubectl describe <pod instance> -n dev` # where pod instance is from the output from the prior command

Attaching to the openquake container
`kubectl exec -it <pod instance> bash` # this is the equivalent of sshing to a server

Accessing the remote openquake web UI via a port-forward
`kubectl port-forward pod/<pod instance> 8888:8800` # then you attach to it via a browser and URL localhost:8888

Deleting the deployment in the dev cluster
`kubectl delete -f k8s/oq.yaml`


Note the container has a volume mounted that is the NFS share that we have in the dev cluster. The share is mounted as /mnt/shared. You can put your simulations there and point the oq config to a directory in that share.
