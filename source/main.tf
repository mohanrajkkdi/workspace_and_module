module "instance_provisioning" {
  machinetype = var.machinetype
  source = "../module"
  sgname = var.sgname
  cidr = var.cidr
  mytag = var.mytag
  amiid = var.amiid
  keyname = var.keyname
}