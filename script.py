import os
import sys
import subprocess


def main(domain_name, email_address):
    # Runs the Terraform authenticated on the root account in order to create the child account
    os.chdir("tf_root")
    subprocess.run(["terraform", "init", "-input=false"])
    subprocess.run(
        [
            "terraform",
            "apply",
            "-auto-approve",
            "-input=false",
            f"-var=email_address={email_address}",
            f"-var=domain_name={domain_name}",
        ]
    )
    print("\nAccount created successfully!")

    # Runs the Terraform authenticated on the child account in order to create the baseline resources
    os.chdir("../tf_child")
    subprocess.run(["terraform", "init"])
    subprocess.run(
        [
            "terraform",
            "apply",
            "-auto-approve",
            "-input=false",
            f"-var=domain_name={domain_name}",
        ]
    )

    print("\nAccount baseline resources created successfully!")


# Check whether the domain name and e-mail address have been provided as arguments
if len(sys.argv) == 3:
    main(sys.argv[1].strip(), sys.argv[2].strip())

else:
    print("\nPlease input the domain name followed by the e-mail address!")
