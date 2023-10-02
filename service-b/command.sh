aws servicediscovery create-service \
      --name service-b \
      --dns-config "NamespaceId="ns-n2b2v3tvx5njeugl",DnsRecords=[{Type="A",TTL="300"}]" \
      --health-check-custom-config FailureThreshold=1

aws ecs register-task-definition \
      --cli-input-json file://fargate-task.json

# update the ecs service file, point to the servicediscovery's service
aws ecs create-service \
      --cli-input-json file://ecs-service.json


<FROM EC2 INSTANCE IN THE SAME VPC>

dig +short service-b.app.local