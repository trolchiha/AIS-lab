resource "virtualbox_vm" "my-vm" {
count = 2 # 

  name        = "my-vm-${count.index + 1}" 
  image       = var.img
  memory      = var.ram
  cpus        = "1"
  boot_order  = ["disk"]

  network_adapter {
       type = "bridged"
       host_interface="en0"
    }
}

resource "local_file" "tf_ip" { 
content = "[ALL]\n${ virtualbox_vm.my-vm[0].network_adapter.0.ipv4_address} ansible_ssh_user=ubuntu" 
  	filename = "./inventory" 
}