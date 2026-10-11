resource "aws_s3_bucket_object" "s3_bucket_objects" {
  for_each = var.s3_bucket_objects

  bucket                        = each.value.bucket
  key                           = each.value.key
  tags                          = each.value.tags
  storage_class                 = each.value.storage_class
  source_hash                   = each.value.source_hash
  source                        = each.value.source
  server_side_encryption        = each.value.server_side_encryption
  region                        = each.value.region
  object_lock_retain_until_date = each.value.object_lock_retain_until_date
  object_lock_mode              = each.value.object_lock_mode
  object_lock_legal_hold_status = each.value.object_lock_legal_hold_status
  metadata                      = each.value.metadata
  kms_key_id                    = each.value.kms_key_id
  force_destroy                 = each.value.force_destroy
  etag                          = each.value.etag
  content_type                  = each.value.content_type
  content_language              = each.value.content_language
  content_encoding              = each.value.content_encoding
  content_disposition           = each.value.content_disposition
  content_base64                = each.value.content_base64
  content                       = each.value.content
  cache_control                 = each.value.cache_control
  bucket_key_enabled            = each.value.bucket_key_enabled
  acl                           = each.value.acl
  tags_all                      = each.value.tags_all
  website_redirect              = each.value.website_redirect
}

