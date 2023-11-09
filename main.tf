terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

resource "random_password" "new_password" {
  length = 11
  lower  = false
}

moved {
  from = random_password.password
  to = random_password.new_password
}
