# elastc-search provision throw ansible

#!/bin/bash

#### Step 1: Create Key Pair and EC2 Instance( when druing the cluster creation automatically creates ec2 instace)

#### Step 2: Start an Alpine Container

#### Replace <namespace> with your Kubernetes namespace
```
kubectl run --rm=true -ti alpine --image alpine -n <namespace> -- sh
```

#### Step 3: Copy Key Pair to Alpine Container

#### Replace <path_of_.pem_file> and <path_inside_container> with your actual values
```
kubectl cp <path_of_.pem_file> es-testing/alpine:<path_inside_container>/
```

#### Step 4: Update Elasticsearch EC2 Instance IP

```
https://github.com/Swasth-Digital-Health-Foundation/hcx-devops/blob/main/application/ansible/inventory/hosts 
```

#### Step 5: Copy Configuration to Alpine Container

#### Replace <path_to_hcx_devops> with the actual path
```
kubectl cp <local_path hcx-devops> es-testing/alpine:hcx-devops
```

#### Step 5 (Inside the Alpine Container): Install necessary packages

```
apk update
apk add ansible
apk add openssh
```

##### Connect to the ElasticSearch EC2 instance
```
ssh -i <your.pem file> ubuntu@<elastic-search ec2 instance ip>
```
##### Type yes when prompted
```
sudo apt-get update
```

#### Step 6: Run Ansible Playbook

#### Navigate to the Ansible playbook directory
```
cd /hcx-devops/application/ansible
```

#### Run the playbook
```
ansible-playbook -i inventory/hosts elasticsearch.yaml -v
```

#### Step 7: Verify Elasticsearch Setup

##### Check the status of Elasticsearch service
```
systemctl status elasticsearch.service
```