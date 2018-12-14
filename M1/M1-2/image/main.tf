provider "docker" {
  host = "tcp://192.168.99.100:2376/"
}
resource "docker_image" "img-ngnx" {
  name = "${var.v_image}"
}