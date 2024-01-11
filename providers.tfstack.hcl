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
    token_file = var.identity_token_file
  }
}

provider "github" "this" {
  config {
    token = component.vault.github_token
  }
}
