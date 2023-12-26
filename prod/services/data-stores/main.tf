provider "aws" {
    region = "us-east-2"
} 

resource "aws_db_instance" "example" {
    identifier_prefix = "terraform-up-and-running-prd"
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    skip_final_snapshot = true
    db_name = "example_database_prd"

    username = var.db_username
    password = var.db_password
  
}

terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-three"
    key            = "prd/services/data_stores/mysql/terraform.tfstate"
    region         = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}