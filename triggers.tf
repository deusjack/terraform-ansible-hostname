#################
# ansible files #
#################

resource "null_resource" "hostname" {
  triggers = {
    hostname = filemd5("${path.module}/hostname.yaml")
  }
}

resource "null_resource" "run_command" {
  triggers = {
    run_command = filemd5("${path.module}/run_command.yaml")
  }
}

#############
# variables #
#############

resource "null_resource" "variables" {
  triggers = {
    hostid = local.hostid
  }
}
