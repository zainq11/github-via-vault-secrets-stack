variable "vault_secrets_app_name" {
  type = string

  description = "The name of the Vault Secrets application containing the GitHub token."
}

variable "vault_secret_name" {
  type = string

  description = "The name of the Vault Secrets secret containing the GitHub token."
}


data "hcp_vault_secrets_secret" "github_token" {
  app_name    = var.vault_secrets_app_name
  secret_name = var.vault_secrets_secret_name
}
