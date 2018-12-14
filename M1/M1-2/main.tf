provider "docker" {
  host = "tcp://192.168.99.100:2376/"
}
module "image" {
  source = "./image"
  v_image = "${lookup(var.v_image,  var.mode)}"
}
module "container" {
  source = "./container"
  v_image = "${module.image.image_out}"
  v_con_name = "${lookup(var.v_con_name, var.mode)}"
  v_int_port = "${lookup(var.v_int_port, var.mode)}"
  v_ext_port = "${lookup(var.v_ext_port, var.mode)}" 
}
