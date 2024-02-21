resource "aws_s3_bucket" "terraform_state_bucket" {
    bucket = "backend-remote-bucket-tf-state"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
    name           = "terraform-state-lock"
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}
