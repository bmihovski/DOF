resource "docker_image" "img-ngnx" {
  name = "nginx:latest"
}

provider "docker" {
  host = "tcp://192.168.99.100:2376/"
}

resource "docker_container" "con-nginx" {
  name = "site"
  image = "${docker_image.img-ngnx.latest}"
  ports {
      internal = "80"
      external = "8080"
  }
}

output "Container ID" {
  value = "${docker_container.con-nginx.id}"
}

output "Container Name" {
  value = "${docker_container.con-nginx.name}"
}
