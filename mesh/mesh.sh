aws appmesh create-mesh --mesh-name apps
aws appmesh create-virtual-service --mesh-name apps --virtual-service-name serviceb.apps.local --spec {}
aws appmesh create-virtual-node --cli-input-json file://create-virtual-node-serviceb.json