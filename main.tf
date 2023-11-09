terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

import {
  id = "supersecret"
  to = random_password.password
}

resource "random_password" "password" {
  length = 11
  lower  = false
}
