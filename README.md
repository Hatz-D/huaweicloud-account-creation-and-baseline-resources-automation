# Account Creation and Baseline Services Deployment Automation

In order to run the script, it is necessary to configure the following Environment Variables for authentication purposes on the root account of the organization:

```shell
export HW_ACCESS_KEY="{$YOUR_SK}"
export HW_SECRET_KEY="{$YOUR_AK}"
export HW_REGION_NAME="sa-brazil-1"
```

Upon configuring the authentication to the root account of the organization, it is necessary to set the variable <code>bucket_name</code> on the <code>./tf_child/variables.tf</code> file in order to set-up the Config Resource Recorder module of the Terraform file. 

Finally, in order to run the script per-se, simply type:

```shell
python3 script.py {$YOUR_DOMAIN_NAME} {$YOUR_EMAIL_ADDRESS}
```

- $YOUR_DOMAIN_NAME: Name of the account to be created under the organization.
- $YOUR_EMAIL_ADDRESS: E-mail address bound to the account to be created.