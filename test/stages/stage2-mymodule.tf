module "dev_tools_mymodule" {
  source = "./module"

  rwx_storage_class = var.rwx_storage_class
  file_storage_class = var.file_storage_class
  block_storage_class = var.block_storage_class
  rwo_storage_class = var.rwo_storage_class
}

resource null_resource write_storage_classes {
  provisioner "local-exec" {
    command = "echo -n '${module.dev_tools_mymodule.rwx_storage_class}' > .rwx_storage_class"
  }
  provisioner "local-exec" {
    command = "echo -n '${module.dev_tools_mymodule.file_storage_class}' > .file_storage_class"
  }
  provisioner "local-exec" {
    command = "echo -n '${module.dev_tools_mymodule.block_storage_class}' > .block_storage_class"
  }
}
