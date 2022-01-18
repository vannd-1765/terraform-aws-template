# terraform-aws-template

## Project Structure

```bash
${project}-infrastructure
|-- terraform
|   |-- environments
|   |   | -- sandbox # Testing environment
|-- modules			# Collection of project specific modules/resources
|   |-- {name}	# Sets up name of modules, ex: ec2, network, rds, ...
```

## Getting Started

### Prerequisites
- The [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started) (0.14.9+) installed.
- The [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed.
- An AWS account.
- Your AWS credentials. You can create a new Access Key on this page.

```bash
aws configure
```
The configuration process stores your credentials in a file at ~/.aws/credentials on MacOS and Linux, or %UserProfile%\.aws\credentials on Windows.
