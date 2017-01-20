
resource "google_compute_firewall" "stackdriver_uptime" {
    name = "default-allow-stackdriver"
    network = "default"
    allow {
      protocol = "tcp"
      ports = ["80", "443"]
    }
    description = "allow stackdriver uptime check."
    source_ranges = [
      "104.155.110.139",
      "104.155.77.122",
      "107.21.113.149",
      "107.21.247.114",
      "146.148.119.250",
      "146.148.41.163",
      "146.148.59.114",
      "23.251.144.62",
      "54.232.81.104",
      "54.232.88.155",
      "54.232.88.172",
      "54.235.161.191",
      "54.244.253.127",
      "54.245.81.104",
      "54.245.81.193",
      "54.251.48.52",
      "54.251.48.53",
      "54.251.48.56"
    ]
}
