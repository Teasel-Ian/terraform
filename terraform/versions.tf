terraform {
  required_version = "1.0.5"
  backend "gcs" {
  }
  required_providers {
    google = {
      version = "3.81.0"
    }
  }
}

provider "google" {
}
