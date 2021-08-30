terraform {
  required_version = "1.0.5"
  backend "gcs" {
  }
}

provider "google" {
  version = "3.81.0"
}
