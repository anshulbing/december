# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQKOKQKCKXMGP2IVC"
  secret_key = "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"
}

# create IAM role for the second lambda function
resource "aws_iam_role" "lambda-DDB-role" {
    name = "lambda-DDB-role"
    
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action = "sts:AssumeRole"
                Effect = "Allow"
                Principal= {
                    Service = "lambda.amazonaws.com"
                }
            }
        ],
        
    })
} 