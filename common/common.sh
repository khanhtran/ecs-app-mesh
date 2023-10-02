#DONT USE app.local
aws servicediscovery create-private-dns-namespace \
      --name app.dev \
      --vpc vpc-0bf95010f1cd5f60a

aws ecs create-cluster \
      --cluster-name my-cluster

export NAMESPACE=ns-n2b2v3tvx5njeugl
export CLUSTER=my-cluster

#verify
aws servicediscovery list-namespaces
aws route53 list-hosted-zones

aws ecs list-clusters

