terraform {
    required_version = ">= 1.6.0"

    required_providers {
        google = {
            source = "hashicorp/google"
            version = ">= 5.0"
        }
    }
}

provider "google" {
    project = var.project_id
    region  = var.region
}

module "artifact_registry_app" {
    source = "./modules/artifact-registry"

    project_id = var.project_id
    location = var.region
    repository_id = "repository_name"
    description = "Repository example"
    format = "DOCKER"
}