# Terraform Heroku App Configuration
# This file should generally not be edited, other than to comment out / uncomment as necessary below. 
# Edit parameters in the associated terraform.tfvars file. 

variable "heroku_email" {}
variable "heroku_api_key" {}
variable "heroku_app_name" {}
variable "heroku_app_region" {}
variable "heroku_database_plan" {}
variable "heroku_app_domainname" {}
variable "heroku_scheduler_plan" {}
variable "heroku_config_vars" {type = "map"}

# Configure the Heroku provider
# https://www.terraform.io/docs/providers/heroku/index.html

provider "heroku" {
  email = "${var.heroku_email}"
  api_key = "${var.heroku_api_key}"
}

# Create a new application

resource "heroku_app" "default" {
  name = "${var.heroku_app_name}"
  region = "${var.heroku_app_region}"
  # Uncomment below to set config variables in terraform.tfvars
  #config_vars = ["${var.heroku_config_vars}"]  
}

# Create database, configure app to use it. Comment out if not required.

resource "heroku_addon" "database" {
  app  = "${heroku_app.default.name}"
  plan = "${var.heroku_database_plan}"
}

# Associate an optional custom domain for application.
# Uncomment the below lines to enable.

#resource "heroku_domain" "default" {
#  app      = "${heroku_app.default.name}"
#  hostname = "${var.heroku_app_domainname}"
#}

# Create optional Heroku Scheduler add-on, configure app to use it.
# https://devcenter.heroku.com/articles/scheduler
# Uncomment the below lines to enable.

#resource "heroku_addon" "scheduler" {
#  app  = "${heroku_app.default.name}"
#  plan = "${var.heroku_scheduler_plan}"
#}