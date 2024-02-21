resource "google_container_node_pool" "pool_one" {
  name       = "my-first-node-pool"
  location   = "us-central1"  // Specify the zone
  cluster    = google_container_cluster.cluster_one.name
  node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20
    disk_type    = "pd-standard"
  }
}

resource "google_container_node_pool" "pool_two" {
  name       = "my-second-node-pool"
  location   = "europe-west2"  // Specify the zone
  cluster    = google_container_cluster.cluster_two.name
  node_count = 1

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20
    disk_type    = "pd-standard"
  }
}