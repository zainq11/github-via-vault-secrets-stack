# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  github = {
    source  = "integrations/github"
    version = "~> 5.42.0"
  }

  hcp = {
    source  = "hashicorp/hcp"
    version = "~> 0.79.0"
  }
}

provider "hcp" "this" {
  config {
    workload_identity {
      resource_name = var.workload_idp_name
      token_file    = var.identity_token_file
    }
  }
}

provider "github" "this" {
  config {
    token = component.secrets.github_token
  }
}
