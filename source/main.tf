module "instance_provisioning" {
  machinetype = var.machinetype
  source = "../module"
  sgname = var.sgname
  cidr = var.cidr
  mytag = var.mytag
  keyname = var.keyname
  ami_name = var.ami_name
  subnet_id = var.subnet_id
}