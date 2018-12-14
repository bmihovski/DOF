provider "docker" {
  host = "tcp://192.168.99.100:2376/"
}
resource "docker_container" "con-nginx" {
  name  = "${var.v_con_name}"
  image = "${var.v_image}"

  ports {
    internal = "${var.v_int_port}"
    external = "${var.v_ext_port}"
  }
}