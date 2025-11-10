resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # Replace with a globally unique bucket name
  acl    = "private"
}

resource "aws_s3_bucket_object" "my_file_upload" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "my_uploaded_file.txt"
  source = "./local_file_to_upload.txt" # Path to your local file
  acl    = "private"
  content_type = "text/plain"
}
