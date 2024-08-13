# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "vault_secrets" {
  audience = ["hcp.workload.identity"]
}

deployment "production" {
  inputs = {
    vault_secrets_app_name    = "sample-app"
    vault_secrets_secret_name = "GITHUB_TOKEN"
    workload_idp_name         = "iam/project/f46ade69-e6a9-42f3-b0ba-df65de0792f9/service-principal/stacks-zain-stacks-testing-zzz-zst/workload-identity-provider/stacks-zain-stacks-testing-zzz-zst"
    identity_token_file       = identity_token.vault_secrets.jwt_filename
    repository_name           = "prod_stacks_repo"
  }
}

deployment "local" {
  inputs = {
    vault_secrets_app_name    = "sample-app"
    vault_secrets_secret_name = "GITHUB_TOKEN"
    workload_idp_name         = "iam/project/f46ade69-e6a9-42f3-b0ba-df65de0792f9/service-principal/stacks-zain-stacks-testing-zzz-zst/workload-identity-provider/stacks-zain-stacks-testing-zzz-zst"
    identity_token_file       = identity_token.vault_secrets.jwt_filename
    repository_name           = "local_stacks_repo-3" 
  }
}
