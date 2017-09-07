# Terraform Heroku App Variables
# https://www.terraform.io/docs/providers/heroku/index.html
# Customize parameters in this file specific to your deployment.

# Account specific parameters
heroku_email = ""
heroku_api_key = ""

# Heroku App specific parameters
heroku_app_name = ""
heroku_app_region = "us"
heroku_app_domainname = ""

# Customize config variable(s) in map type variable below.
# https://devcenter.heroku.com/articles/config-vars
heroku_config_vars = {
    FOO = "bar"
}

# PostgreSQL database plan details: https://elements.heroku.com/addons/heroku-postgresql
heroku_database_plan = "heroku-postgresql:hobby-dev"

# Scheduler plan details: https://elements.heroku.com/addons/scheduler
heroku_scheduler_plan = "scheduler:standard"