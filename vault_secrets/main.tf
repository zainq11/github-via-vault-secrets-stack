data "hcp_vault_secrets_secret" "github_token" {
  app_name    = var.vault_secrets_app_name
  secret_name = var.vault_secrets_secret_name
}
