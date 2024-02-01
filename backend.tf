terraform {
  backend "s3" {
    bucket         = "ct-aft.tf-state.codzs.space"
    key            = "ct-aft/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "ct_aft.tf_state"
  }
}