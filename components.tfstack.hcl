# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "secrets" {
  source = "./vault_secrets"

  inputs = {
    vault_secrets_app_name    = var.vault_secrets_app_name
    vault_secrets_secret_name = var.vault_secrets_secret_name
  }

  providers = {
    hcp = provider.hcp.this
  }
}

component "github" {
  source = "./github"

  inputs = {
    repository_name = var.repository_name
  }

  providers = {
    github = provider.github.this
  }
}
