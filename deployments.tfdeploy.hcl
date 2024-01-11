identity_token "vault_secrets" {
  audience = ["<Set to your OIDC audience>"]
}

deployment "production" {
  variables = {
    vault_secrets_app_name = "<Set to the name of the Vault Secrets application>"
    vault_secrets_secret_name      = "<Set to the name of the secret containing the GitHub token>"
    identity_token_file = identity_token.vault_secrets.jwt_filename
  }
}
