output "rwx_storage_class" {
  description = "The storage class to use for Read-Write-Many volumes"
  value       = var.rwx_storage_class
}

output "file_storage_class" {
  description = "The storage class to use for File storage volumes"
  value       = var.file_storage_class
}

output "block_storage_class" {
  description = "The storage class to use for Block storage volumess"
  value       = var.block_storage_class
}
