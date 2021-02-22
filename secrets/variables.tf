variable "name" {
  description = "Provide the name for the rancher secret"
}

variable "project_id" {
  description = "Type the project id"
}

variable "data" {
  type = "map"
  description = "Type the data to be used in rancher secret"
}
