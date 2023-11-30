identity_token "vault_secrets" {
  audience = ["<Set to your OIDC audience>"]
}

deployment "production" {
  variables = {
    identity_token_file = identity_token.vault_secrets.jwt_filename
  }
}
