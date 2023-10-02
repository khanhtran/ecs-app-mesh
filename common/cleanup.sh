#Cleanup
aws servicediscovery delete-namespace \
      --id ns-o3ptyqjzpouln6cg

aws ecs delete-cluster \
      --cluster my-cluster