output "Public_ip" {
  value = "${scaleway_instance_server.docker.public_ip}"
}
output "Name" {
  value = "${scaleway_instance_server.docker.name}"
}