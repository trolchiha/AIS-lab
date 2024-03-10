resource "virtualbox_vm" "example" {
  name        = "my-vm" 
  image       = "https://vagrantcloud.com/ubuntu/boxes/xenial64/versions/20180420.0.0/providers/virtualbox.box"  
  memory      = "1024 mib" 
  cpus        = "1"
  boot_order  = ["disk"]

  network_adapter {
       type = "bridged"
       host_interface="en0"
    }
}