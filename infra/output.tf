output "spock_diff_repo" {
  value = {
    id       = module.artifact_registry_spock_diff.repository_id
    location = module.artifact_registry_spock_diff.location
    link     = module.artifact_registry_spock_diff.repository_self_link
  }
}