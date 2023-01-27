# Terraform for demo automation (or recurring-custom-demo aka RCD)

Advanced demos are often times complex too setup since they require usually many manual steps. These steps usually involve clicking UIs, calling APIs and making sure that every step is executed at the right time.

You would probably perform these manual steps once or twice but soon skip demoing a certain capability all at once because it is too much effort.

> Terraform to the rescue !!!

## Why Terraform helps

Infrastructue as code abstract the necessity to understand proprietary APIs and to worry about dependencies between the stuff you want to achieve.

You define the desired state and terraform is there to fulfill.

For teams managing both simple and complex infrastructure terraform provides great value as it introduces

- transparency about what is actually needed for my environment (less likely to encounter historically grown unknown infrastructures)
- portability between environments because it is easy to transfer changes between deployments
- repeatability. If you mess things up start all over again.

## How Terraform works - It's simpler than you think

Terraform configuration usually consists of three parts

- A variables definition which defines the needed configuration to run your deployment (e.g. Auth0 domain, clientId, clientSecret)
- A resource definition that describes your desired state.
- A configuration file that contains your environment specific configuration (to satisfy defined variables.)

## How to execute a terraform script

(First make sure to [install](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) the terraform cli!)

```sh
$ cd /your/project/directory
$ terraform init # downloads the needed dependencies for your terraform script \
   # (e.g. the auth0 provider)
$ terraform plan # gives a preview of the changes that terraform intends to make
$ terraform apply # applies the changes needed to ensure your desired state
$ terraform destroy # remove your demo and cleanup

# to use a config file pass the path to that configuration to the cli
$ terraform plan -var-file=/path/to/config
```
