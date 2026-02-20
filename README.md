# Account Creation and Baseline Services Deployment Automation

## Description
This repository aims to provide a template for the creation of accounts on Huawei Cloud Organizations and deployment of baseline resources on the newly account created in a centralized and automated manner.

## How to Run
In order to run the Terraform script, it is necessary to configure the following Environment Variables for authentication purposes on the root account of the organization:

```shell
export HW_ACCESS_KEY="{$YOUR_SK}"
export HW_SECRET_KEY="{$YOUR_AK}"
export HW_REGION_NAME="sa-brazil-1"
```

Upon configuring the authentication to the root account of the organization, it is necessary to set the variables <code>bucket_name</code> on the <code>./variables.tf</code> file in order to set-up the Config Resource Recorder module of the Terraform file. 

Finally, in order to run the Terraform script per-se, simply type:

```terraform
terraform init
terraform apply -auto-approve -input=false -var=email_address={$YOUR_EMAIL_ADDRESS} -var=domain_name={$YOUR_DOMAIN_NAME}
```

- $YOUR_DOMAIN_NAME: Name of the account to be created under the organization.

- $YOUR_EMAIL_ADDRESS: E-mail address bound to the account to be created.



