resource "null_resource" "ansible-provision" {
  depends_on = ["aws_instance.splunk"]

  provisioner "local-exec" {
    command = "echo \"[hosts]\" > ansible/splunk-inventory"
  }

  provisioner "local-exec" {
    command = "echo \"${format("%s ansible_ssh_user=%s", aws_instance.splunk.0.public_ip, var.ssh_user)}\" >> ansible/splunk-inventory"
  }
}
