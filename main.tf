terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

resource "random_pet" "Dog" {
  length = var.length
}

variable "length" {
  type    = number
  default = "51"
}

resource "random_id" "server" {
  byte_length = var.length
}

output "pet_name" {
  value = random_pet.Dog.id

}

output "Random_id" {
  value = random_id.server.id

}
