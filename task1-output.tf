output "html_file_public_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.windu-survives-1.name}/${google_storage_bucket_object.index-store.name}"
  description = "Public URL for the HTML file stored in the bucket."
}
