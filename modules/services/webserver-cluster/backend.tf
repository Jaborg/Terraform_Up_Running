terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-three"
    key            = "stage/services/webserver-cluster/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}

