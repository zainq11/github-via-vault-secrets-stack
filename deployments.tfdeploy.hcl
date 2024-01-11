identity_token "vault_secrets" {
  audience = ["<Set to your HCP IAM assume-role audience>"]
}

deployment "production" {
  variables = {
    vault_secrets_app_name    = "<Set to your Vault Secrets application name>"
    vault_secrets_secret_name = "<Set to the name of your Vault Secrets secret containing your GitHub token"
    workload_idp_name         = "<Set to your fully delimited HCP IAM workload identity provider. This is the same as the hcp_iam_workload_identity_provider.idp.resource_name attribute in the HCP Terraform provider.>"
    identity_token_file       = identity_token.vault_secrets.jwt_filename
  }
}
