Tutorials:
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-service-discovery.html

aws servicediscovery create-private-dns-namespace \
      --name tutorial \
      --vpc vpc-abcd1234


aws servicediscovery create-service \
      --name myapplication \
      --dns-config "NamespaceId="ns-iun6umd4jp7qrzjt",DnsRecords=[{Type="A",TTL="300"}]" \
      --health-check-custom-config FailureThreshold=1

aws ecs create-cluster \
      --cluster-name tutorial

aws ecs register-task-definition \
      --cli-input-json file://fargate-task.json

aws ecs create-service \
      --cli-input-json file://ecs-service-discovery.json


Verify:
aws servicediscovery list-instances \
      --service-id srv-v5yjju5dzqfqncfb
aws servicediscovery discover-instances \
      --namespace-name tutorial \
      --service-name myapplication \
      --query-parameters ECS_CLUSTER_NAME=tutorial

aws servicediscovery \
      get-namespace --id ns-iun6umd4jp7qrzjt

aws route53 list-resource-record-sets \
      --hosted-zone-id Z071684526P9ZOQU69FLL 
<FROM EC2 INSTANCE IN THE SAME VPC>

dig +short myapplication.tutorial