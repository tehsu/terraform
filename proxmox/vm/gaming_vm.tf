module "gaming_vm" {
  source = "../../modules/vm"

  instance_name = "gaming-vm"
  image_name    = "local:iso/Win11_English_x64v1.iso"
  target_node   = "node2"
  memory        = "16384"
  cores         = "8"
  disk_size     = "40G"
  os_type = "win11"
}