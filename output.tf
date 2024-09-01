output "hostname" {
  value       = var.hostname
  description = "The hostname of the linux machine"
}

output "hostid" {
  value       = local.hostid
  description = "The applied HostID"
}
