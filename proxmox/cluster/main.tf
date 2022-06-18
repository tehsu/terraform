module "cluster" {
  source = "../../modules/vm"

  count = var.nodes

  instance_name = "cluster-vm-${count.index}"
  image_name    = ""
  target_node   = "node2"
  memory        = "16384"
  cores         = "8"
  disk_size     = "64G"
}