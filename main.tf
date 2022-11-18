terraform {
  required_version = ">=0.15"
}

data "http" "example" {
  url = "https://app.terraform.io/api/meta/ip-ranges"

  request_headers = {
    Accept            = "application/json",
    If-Modified-Since = var.date
  }

  lifecycle {
    postcondition {
      condition     = contains([200], self.status_code)
      error_message = "No Changes to CIDR blocks"
    }
  }

}
output "ips" {
  value = data.http.example.response_body
}