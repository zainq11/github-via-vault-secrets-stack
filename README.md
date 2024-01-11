# github-via-vault-secrets-stack

_This is an example stack configuration for the private preview of Terraform Stacks. Language
constructs and features are subject to change given feedback received during this preview. Do not
use Stacks for production workloads at this time._

![github-via-vault-secrets-stack](https://github.com/hashicorp/github-via-vault-secrets-stack/assets/2430490/1b4b919c-0559-4d7b-8d05-f669c23ac828)


An example Terraform Stack that uses a datasource to fetch a static GitHub token from HCP Vault
Secrets (using OIDC authentication to Vault) and passes the token to another component for provisioning resources
with the GitHub provider (in this case, a respository).

_We do not recommend using this example within production accounts._

## Usage

_Prerequisites: You must have a Terraform Cloud account with access to the private preview of
Terraform Stacks, a GitHub account, and an HCP account with HCP Vault Secrets containing a valid
GitHub personal access token. Details of all of this are found in the provided Stacks User Guide._

1. **Configure Vault Secrets authentication** by using the HCP API or Terraform itself: https://registry.terraform.io/modules/chrisarcand/workload-identity/hcp/latest
   You must configure Terraform Cloud as a workload identity provider, create a service principal for that provider, and create an IAM binding to give the service principal permission to the Project your Vault Secrets application is in.
   There currently is no user interface in the HCP Platform to do this.
2. **Fork this repository** to your own GitHub account, such that you can edit this stack configuration
   for your purposes.
3. **Edit your forked stack configuration** and change `deployments.tfdeploy.hcl` to use the correct values.
4. **Create a new stack** in Terraform Cloud and connect it to your forked configuration repository.
5. **Provision away!** Once applied, you should have a new GitHub respository created in the account you provided a token for.
