variable "rwx_storage_class" {
  type        = string
  description = "The storage class to use for Read-Write-Many volumes"
}

variable "file_storage_class" {
  type        = string
  description = "The storage class to use for File storage volumes"
}

variable "block_storage_class" {
  type        = string
  description = "The storage class to use for Block storage volumes"
}
