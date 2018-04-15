output "vms_id" {
  value       = "${azurerm_virtual_machine.module.*.id}"
  description = "Id's of the VMs created"
}
