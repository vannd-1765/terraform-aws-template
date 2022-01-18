data "terraform_remote_state" "sandbox" {
  backend = "s3"

  config = {
    bucket  = "demov-tfstate"
    key     = "sandbox.tfstate"
    region  = "us-east-1"
  }
}
