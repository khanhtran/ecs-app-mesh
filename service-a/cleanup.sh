#Cleanup

aws servicediscovery deregister-instance \
      --service-id srv-werifjilckqpm2f3 \
      --instance-id 

aws servicediscovery delete-service \
      --id srv-werifjilckqpm2f3

aws servicediscovery delete-namespace \
      --id ns-o3ptyqjzpouln6cg

aws ecs update-service \
      --cluster my-cluster \
      --service service-a \
      --desired-count 0

aws ecs delete-service \
      --cluster my-cluster \
      --service service-a

aws ecs delete-cluster \
      --cluster my-cluster
