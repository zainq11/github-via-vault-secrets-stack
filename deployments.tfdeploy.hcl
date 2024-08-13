# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "vault_secrets" {
  audience = ["<Set to your HCP IAM assume-role audience>"]
}

deployment "production" {
  inputs = {
    vault_secrets_app_name    = "<Set to your Vault Secrets application name>"
    vault_secrets_secret_name = "<Set to the name of your Vault Secrets secret containing your GitHub token"
    workload_idp_name         = "iam/project/f46ade69-e6a9-42f3-b0ba-df65de0792f9/service-principal/stacks-zain-stacks-testing-zzz-zst/workload-identity-provider/stacks-zain-stacks-testing-zzz-zst"
    identity_token_file       = identity_token.vault_secrets.jwt_filename
  }
}
