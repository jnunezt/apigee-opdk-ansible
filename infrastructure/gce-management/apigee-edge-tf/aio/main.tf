# Create the apigeenet network
data "google_compute_network" "apigeenet" {
  name = "default"
}

# Create the apigeenet router
resource "google_compute_router" "apigeenet-router" {
  name    = "apigeenet-router"
  network = "${data.google_compute_network.apigeenet.self_link}"
}

# Create the gateway nat for the apigeenet-subnet-router
resource "google_compute_router_nat" "apigeenet-subnet-nat" {
  name                               = "apigeenet-subnet-nat"
  router                             = "${google_compute_router.apigeenet-router.name}"
  region                             = "${var.region}"
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

module "configure_firewall_apigeenet_allow_mgmt_ui" {
  source                 = "../modules/apigeenet-firewalls-protocol-with-ports"
  firewall_name          = "mgmt-ui"
  firewall_source_tags   = ["mgmt-ui"]
  firewall_network       = "${data.google_compute_network.apigeenet.self_link}"
  firewall_protocol      = "tcp"
  firewall_ports         = ["9000", "80", "8080", "9001"]
  firewall_source_ranges = ["10.0.0.0/8"]
}

module "configure_firewall_apigeenet_allow_icmp" {
  source                 = "../modules/apigeenet-firewalls-protocol-only"
  firewall_name          = "apigeenet-allow-icmp"
  firewall_network       = "${data.google_compute_network.apigeenet.self_link}"
  firewall_protocol      = "icmp"
  firewall_source_ranges = ["10.0.0.0/8"]
}

module "configure_firewall_apigeenet_allow_ssh" {
  source                 = "../modules/apigeenet-firewalls-protocol-with-ports"
  firewall_name          = "apigeenet-allow-ssh"
  firewall_source_tags   = ["apigeenet-allow-ssh"]
  firewall_network       = "${data.google_compute_network.apigeenet.self_link}"
  firewall_protocol      = "tcp"
  firewall_ports         = ["22"]
  firewall_source_ranges = ["10.0.0.0/8"]
}

module "configure_firewall_apigeenet_allow_ssh_public" {
  source                 = "../modules/apigeenet-firewalls-protocol-with-ports"
  firewall_name          = "public-allow-ssh"
  firewall_source_tags   = ["public-allow-ssh"]
  firewall_network       = "${data.google_compute_network.apigeenet.self_link}"
  firewall_protocol      = "tcp"
  firewall_ports         = ["22"]
  firewall_source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "bastion_instance" {
  name         = "apigee-bastion"
  zone         = "${var.zone}"
  machine_type = "${var.machine_type}"
  tags         = ["apigeenet-allow-icmp", "public-allow-ssh"]

  boot_disk {
    initialize_params {
      image = "${var.image_name}"
      size  = 60
    }
  }

  network_interface {
    network = "${data.google_compute_network.apigeenet.self_link}"

    access_config = {}
  }

  service_account {
    email  = "${var.service_account_email}"
    scopes = "${var.instance_scopes}"
  }
}

resource "google_compute_instance" "aio_instance" {
  name         = "planet-aio"
  zone         = "${var.zone}"
  machine_type = "${var.machine_type}"
  tags         = ["mgmt-ui", "http-server", "apigeenet-allow-icmp", "apigeenet-allow-ssh"]

  boot_disk {
    initialize_params {
      image = "${var.image_name}"
      size  = 250
    }
  }

  network_interface {
    network = "${data.google_compute_network.apigeenet.self_link}"
  }
}
