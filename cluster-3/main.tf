module "cvm" {
  source        = "../module/cvm"
  secret_id     = var.secret_id
  secret_key    = var.secret_key
  password      = var.password
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
  instance_name = "cluster-3"
  cpu           = 2
  memory        = 4
}

module "k3s" {
  source      = "../module/k3s"
  public_ip   = module.cvm.public_ip
  private_ip  = module.cvm.private_ip
  cidr_pods = var.cidr_pods
  cidr_services = var.cidr_services
  server_name = "k3s-hongkong-3"
}


resource "local_sensitive_file" "kubeconfig3" {
  content  = module.k3s.kube_config
  filename = "${path.module}/config3.yaml"
}