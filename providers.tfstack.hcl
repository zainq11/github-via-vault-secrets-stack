required_providers {
  github = {
    source  = "integrations/github"
    version = "~> 5.42.0"
  }

  vault_secrets = {
    source  = "hashicorp/hcp_vault_secrets"
    version = "~> 0.77.0"
  }
}

provider "hcp_vault_secrets" "this" {
  config {
    # Incompatible with stacks OIDC auth :/
    # We need the provider to accept a raw JWT, a path to a JWT, or the contents of the credentials
    # file (not a path) as all the other stacks-supported providers do (AWS, Azure, GCP, Vault)
    # credential_file = ":("
  }
}

provider "github" "this" {
  config {
    token = component.vault.github_token
  }
}
