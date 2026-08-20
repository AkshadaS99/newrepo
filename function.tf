locals {

  env = "dev"

  project = upper("terraform")

  server_name = join("-", [
    local.env,
    local.project,
    "01"
  ])

  az = element([
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ], 0)

}