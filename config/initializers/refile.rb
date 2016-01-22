# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: "AKIAIKQTRIDPWHQMJ7MA",
  secret_access_key: "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",
  region: "us-east-1",
  bucket: "versity",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)