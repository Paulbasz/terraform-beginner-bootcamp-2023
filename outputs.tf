
output "random_bucket_name" {
  value = random_string.bucket_name.result

output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value = module.terrahouse_aws.random_bucket_name

}