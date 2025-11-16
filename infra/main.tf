provider "google" {
    project = var.project_id
    region = var.region
}

resource "google_project_service" "run" {
    project = var.project_id
    service = "run.googleapis.com"
    disable_on_destroy = false
}

resource "google_project_service" "eventarc" {
    project = var.project_id
    service = "eventarc.googleapis.com"
    disable_on_destroy = false
}

resource "google_project_service" "pubsub" {
    project = var.project_id
    service = "pubsub.googleapis.com"
    disable_on_destroy = false
}