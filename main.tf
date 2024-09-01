locals {
  hostid = var.hostid == "random" ? one(random_string.hostid).result : var.hostid
}

resource "ansible_playbook" "hostname" {
  name                    = var.hostname
  playbook                = "${path.root}/../ansible/hostname.yaml"
  replayable              = false
  ignore_playbook_failure = false
  lifecycle {
    replace_triggered_by = [null_resource.hostname]
  }
}

resource "random_string" "hostid" {
  count       = var.hostid == "random" ? 1 : 0
  length      = 8
  min_numeric = 8
  numeric     = true
}

resource "ansible_playbook" "hostid" {
  name                    = var.hostname
  playbook                = "${path.root}/../ansible/run_command.yaml"
  replayable              = false
  ignore_playbook_failure = false
  extra_vars = {
    cmd    = "echo ${local.hostid} > /etc/hostid"
    reboot = false
  }
  lifecycle {
    replace_triggered_by = [
      null_resource.run_command,
      null_resource.variables
    ]
  }
}
