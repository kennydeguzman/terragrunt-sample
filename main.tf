terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "this" {
  count = var.bucket_count

  bucket        = var.bucket
  bucket_prefix = var.bucket_prefix

  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = var.tags
}