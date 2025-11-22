output "infrastructure_info" {
  value = {
    id       = module.artifact_registry_app.repository_id
    location = module.artifact_registry_app.location
    link     = module.artifact_registry_app.repository_name
  }
  description = "Info about Artifact Registry repository"
}
