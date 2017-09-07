# terraform-heroku

## Summary

<a href="https://www.terraform.io/">Terraform</a> configuration template to provision a new <a href="https://www.heroku.com">Heroku</a> app. Utilizes the <a href="https://www.terraform.io/docs/providers/heroku/index.html">Terraform Heroku provider.</a>

The base config will provision a new Heroku app (with no buildpack assignment) and an associated <a href="https://elements.heroku.com/addons/heroku-postgresql">PostgreSQL database add-on</a>. The default deployment region is \'us\', but this can be modified. The specific database plan can be customized with parameters in terraform.tfvars. Additional functionality is available to configure a <a href="https://devcenter.heroku.com/articles/custom-domains">custom domain name</a>, as well as to provision a <a href="https://devcenter.heroku.com/articles/scheduler">Heroku Scheduler add-on</a>. Configurations for those need to be uncommented in main.tf to use, and parameters configured appropriately in terraform.tfvars.

The <a href="https://www.terraform.io/docs/state/index.html">Terraform state file</a> is not stored with the code repository, and must be maintained locally. 

## Requirements

- <a href="https://www.terraform.io/downloads.html">Terraform 0.10.x</a>
- A Heroku account

## Usage

- Clone the repository
- Customize the parameters in the terraform.tfvars file. Minimum required updates are 'heroku\_email', 'heroku\_api\_key', and 'heroku\_app\_name'.
- Customize additional terraform.tfvars parameters as applicable for deployment.
- Comment out, or uncomment, configuration for custom domain name, and database & scheduler add-ons in main.tf as applicable for deployment. 
- Run 'terraform init'. This step only required for first run or otherwise if the heroku provider is not installed.
- Apply the configuration:

```
terraform plan
terraform apply
```


## To-Do

 - [ ] Provide for remote state file storage, most likely in S3.

 ## License

This is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).