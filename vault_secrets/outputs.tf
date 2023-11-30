output "github_token" {
  description = "The static GitHub token stored securely in HCP Vault Secrets, fetched via OIDC authentication"

  value = data.hcp_vault_secrets_secret.github_token.data
}
