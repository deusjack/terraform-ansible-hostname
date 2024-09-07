# Doesn't need a trigger. On change the playbooks is automatically replaced.
variable "hostname" {
  type        = string
  description = "The hostname of the linux machine"
}

variable "hostid" {
  type        = string
  description = "HostID: 8 digit hex or decimal number."
}
