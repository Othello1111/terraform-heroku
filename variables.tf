variable "heroku_email" {}
variable "heroku_api_key" {}
variable "heroku_app_name" {}
variable "heroku_app_region" {
    default = "us"
}
variable "heroku_database_plan" {}
variable "heroku_app_domainname" {}
variable "heroku_scheduler_plan" {}
variable "heroku_config_vars" {
    type = "map"
}