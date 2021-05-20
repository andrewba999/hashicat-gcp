module "network" {
  source  = "app.terraform.io/andrewballinger-training/network/google"
  version = "2.5.0"
  
  project_id   = var.project
  network_name = "hashicat-vpc"

subnets = [
  {
    subnet_name   = "hashicat-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}