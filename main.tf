resource "google_container_cluster" "cluster_one" {
  name     = "my-first-cluster"
  location = "us-central1"
deletion_protection = false
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_cluster" "cluster_two" {
  name     = "my-second-cluster"
  location = "europe-west2"
  deletion_protection = false
  remove_default_node_pool = true
  initial_node_count       = 1
}
