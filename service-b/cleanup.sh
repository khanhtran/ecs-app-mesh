#Cleanup

aws servicediscovery deregister-instance \
      --service-id srv-v5yjju5dzqfqncfb \
      --instance-id 

aws servicediscovery delete-service \
      --id srv-v5yjju5dzqfqncfb

aws servicediscovery delete-namespace \
      --id ns-o3ptyqjzpouln6cg

aws ecs update-service \
      --cluster my-cluster \
      --service service-b \
      --desired-count 0

aws ecs delete-service \
      --cluster my-cluster \
      --service service-b

aws ecs delete-cluster \
      --cluster my-cluster