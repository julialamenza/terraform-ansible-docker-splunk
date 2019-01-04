# Terraform + Ansible -> Splunk inside Docker

We will use Terraform and Ansible to complete the bootstrap process.


### Usage
--> You need to install terraform and ansible in your machine to run this code <--

- Configure defaults in variables.tf or override them with flags during terraform apply
- Plan the build with terraform plan and ensure it looks as expected
- Build it with terraform apply

-> Once built, cat ansible/splunk-inventory to ensure the host is populated

Deploy Splunk inside Docker --> ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -b -i splunk-inventory splunk.yml --private-key="you key path"

-- Navigate to the management console by entering in the IP Address of the VM with the port 8000. for example: http://plublic-ip:8000

You should see a splunk enterprise screen
Enjoy ^^


Delete all the Infrastructure with terraform destroy

#### PR's are welcome
