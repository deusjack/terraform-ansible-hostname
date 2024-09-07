resource "ansible_playbook" "hostname" {
  name                    = var.hostname
  playbook                = "${path.root}/../ansible/hostname.yaml"
  replayable              = false
  ignore_playbook_failure = false
  lifecycle {
    replace_triggered_by = [null_resource.hostname]
  }
}

resource "ansible_playbook" "hostid" {
  name                    = var.hostname
  playbook                = "${path.root}/../ansible/run_command.yaml"
  replayable              = false
  ignore_playbook_failure = false
  extra_vars = {
    cmd    = "echo ${var.hostid} > /etc/hostid"
    reboot = false
  }
  lifecycle {
    replace_triggered_by = [
      null_resource.run_command,
      null_resource.variables
    ]
  }
}
