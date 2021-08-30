resource "google_storage_bucket" "auto-expire" {
  name          = "tuk-testing-auto-expiring-bucket"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}