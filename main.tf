
provider "scaleway" {
  access_key = "SCALEWAY_ACCESS_KEY"
  secret_key = "SCALEWAY_SECRET_KEY"
  organization_id = "SCALEWAY_ORGANIZATION_ID"
  zone       = "fr-par-1"
  region     = "fr-par"
}

resource "scaleway_instance_ip" "public_ip" {
  server_id = "${scaleway_instance_server.docker.id}"
}

resource "scaleway_instance_security_group" "www" {
  inbound_default_policy = "drop"
  outbound_default_policy = "accept"
  inbound_rule {
    action = "accept"
    port = "22"
    ip = "${var.ipadmin}"
  }
  inbound_rule {
    action = "accept"
    port = "80"
  }
  inbound_rule {
    action = "accept"
    port = "443"
  }
    inbound_rule {
    action = "accept"
    port = "8080"
  }
}

resource "scaleway_instance_server" "docker" {
  type = "DEV1-S"
  image = "89c80d27-ddf4-4ffa-8215-b335cce3fd05"
  tags = [ "docker", "blog" ]
  security_group_id= "${scaleway_instance_security_group.www.id}"
}
