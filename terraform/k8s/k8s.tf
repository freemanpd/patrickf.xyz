module "k8s" {
  source                = "hajowieland/k8s/digitalocean"
  version               = "1.0.0"
  enable_digitalocean   = "true"
  random_cluster_suffix = "dev"
  do_k8s_nodes          = "2"
  do_k8s_nodepool_size  = "2"
  do_token              = "${var.do_token}"
  do_region             = "nyc1"
  do_k8s_name           = "k8s-plab2-nyc1"
  #do_k8s_version = "1.15.3-do.2"
  do_k8s_node_type     = "s-1vcpu-2gb"
  do_k8s_nodepool_type = "s-1vcpu-2gb"
  do_k8s_pool_name     = "k8s-nodepool-do"
}

resource "digitalocean_database_cluster" "postgres" {
  name       = "patrickfxzy-postgres"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}
