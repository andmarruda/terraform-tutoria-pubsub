output "repository_id" {
  value       = google_artifact_registry_repository.this.repository_id
  description = "Repository ID"
}

output "repository_name" {
  value       = google_artifact_registry_repository.this.name
  description = "Full resource name of the repository"
}

output "location" {
  value       = google_artifact_registry_repository.this.location
  description = "Repository region"
}
