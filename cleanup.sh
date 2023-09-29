#Cleanup

aws servicediscovery deregister-instance \
      --service-id srv-v5yjju5dzqfqncfb \
      --instance-id dfe8801cedaf4fb7ac61bc5b889ab046

aws servicediscovery delete-service \
      --id srv-v5yjju5dzqfqncfb

aws servicediscovery delete-namespace \
      --id ns-iun6umd4jp7qrzjt

aws ecs update-service \
      --cluster tutorial \
      --service ecs-service-discovery \
      --desired-count 0

aws ecs delete-service \
      --cluster tutorial \
      --service ecs-service-discovery

aws ecs delete-cluster \
      --cluster tutorial