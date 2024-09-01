terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "ubuntu-ssh" {
  name = "fredericeducentre/ubuntu-ssh"
}

# Create a container
resource "docker_container" "container" {
  image = docker_image.ubuntu-ssh.image_id
  name = "server1"
  ports {
    internal = 22
    external = 24
  }
  volumes {
    container_path = "/var/run/docker.sock"
    host_path = "/var/run/docker.sock"
  }
}