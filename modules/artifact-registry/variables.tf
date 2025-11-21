variable "project_id" {
    type = string
}

variable "location" {
    type = string
}

variable "repository_id" {
    type = string
}

variable "description" {
  type        = string
  description = "Descrição do repositório"
  default     = "Artifact Registry repository managed by Terraform"
}

variable "format" {
    type = string
    default = "DOCKER"
}
