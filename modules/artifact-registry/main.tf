resource "google_project_service" "artifact_registry_api" {
    project = var.project_id
    service = "artifactregistry.googleapis.com"
    disable_on_destroy = false
}

resource "google_artifact_registry_repository" "this" {
    project         = var.project_id
    location        = var.location
    repository_id   = var.repository_id
    description     = var.description
    format          = var.format

    cleanup_policies {
        id      = "keep-last-3-versions"
        action  = "DELETE"

        condition {
            older_versions {
                package_prefix  = ""
                keep_count      = 3
            }
        }
    }

    depends_on = [
        google_project_service.artifact_registry_api
    ]
}