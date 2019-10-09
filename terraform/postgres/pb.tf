resource "digitalocean_database_cluster" "postgres" {
  name       = "patrickfxzy-postgres"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}
