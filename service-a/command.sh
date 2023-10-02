aws servicediscovery create-service \
      --name service-a \
      --dns-config "NamespaceId="ns-n2b2v3tvx5njeugl",DnsRecords=[{Type="A",TTL="300"}]" \
      --health-check-custom-config FailureThreshold=1

aws ecs register-task-definition \
      --cli-input-json file://fargate-task.json

#srv-6xnwmlt64pecjqq4

#this command will add record(s) to route53
#- record name: namespace.service-name (from service discovery)
#- record value: task value
aws ecs create-service \
      --cli-input-json file://ecs-service.json


Verify:
<FROM EC2 INSTANCE IN THE SAME VPC>

dig +short service-a.app.local