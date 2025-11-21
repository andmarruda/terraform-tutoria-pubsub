output "repository_id" {
    value       = google_artifact_registry_repository.this.repository_id
    description = "Repository ID"
}

output "repository_self_link" {
    value       = google_artifact_registry_repository.this.repository_self_link
    description = "Self repository's link"
}

output "location" {
    value       = google_artifact_registry_repository.this.location
    description = "Repository's region"
}