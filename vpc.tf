module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "2.5.0"

    project_id   = var.project
    network_name = "hashicat-vpc"
    routing_mode = "GLOBAL"

subnets = [
  {
    subnet_name   = "hashicat-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}