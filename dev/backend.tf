terraform {
 backend "s3" {
   bucket         = "demoprojecttfstatefile"
   key            = "terraform.tfstate"
   region         = "us-east-1"
   dynamodb_table = "demoproject-terraform-locking"
   encrypt        = true
 }
}