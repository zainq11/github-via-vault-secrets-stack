component "secrets" {
  source = "./vault_secrets"

  inputs = {
    vault_secrets_app_name = "<Set to the name of the Vault Secrets application>"
    vault_secrets_secret_name      = "<Set to the name of the secret containing the GitHub token>"
  }

  providers = {
    hcp = provider.hcp.this
  }
}

component "github" {
  source = "./github"

  inputs = {
  }

  providers = {
    github = provider.github.this
  }
}
