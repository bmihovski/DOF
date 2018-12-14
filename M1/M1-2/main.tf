module "image" {
  source = "./image"
  v_image = "${var.v_image}"
}
module "container" {
  source = "./container"
  v_image = "${module.image.image_out}"
  v_con_name = "${var.v_con_name}"
  v_int_port = "${var.v_int_port}"
  v_ext_port = "${var.v_ext_port}" 
}
