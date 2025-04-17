Enable an ssh session to elastic search created through the terraform
git clone to the elastic search instance which was created from the terraform
https://github.com/Swasth-Digital-Health-Foundation/hcx-devops.git
cd to hcx-devops/appliaction/ansible-elasticsearch
verify the elastic search version you need to install. You can change the version according to your req
https://github.com/Swasth-Digital-Health-Foundation/hcx-devops/blob/sprint-62/application/ansible-elasticsearch/roles/elasticsearch/tasks/main.yml#L19
Run below command to deploy elastic search
ansible-playbook -i hosts deploy-elastic.yml
