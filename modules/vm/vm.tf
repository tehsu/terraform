resource "proxmox_vm_qemu" "this" {
  name        = var.instance_name
  target_node = var.target_node
  iso         = var.image_name
  memory      = var.memory
  cores       = var.cores
  cpu         = "host"

  network {
    bridge    = "vmbr0"
    firewall  = false
    link_down = false
    model     = "e1000"
  }

  disk {
    format  = "raw"
    type    = "virtio"
    storage = "local-lvm"
    size    = var.disk_size
  }
}
