provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "docker_container" "terraform_container" {
  image = docker_image.ubuntu.latest
  name  = "terraform_container"
}

