terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "0.37.1"
    }
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_branding" "my_brand" {
  logo_url = "https://cdn-icons-png.flaticon.com/512/6119/6119533.png"

  colors {
    primary         = "#3366ff"
    page_background = "#edf1f7"
  }

  universal_login {
    # Ensure that "{%- auth0:head -%}" and "{%- auth0:widget -%}"
    # are present in the body.
    body = file("./templates/ul-template.html")
  }
}
