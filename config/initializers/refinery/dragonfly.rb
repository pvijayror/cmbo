Refinery::Core.configure do |config|
  config.s3_backend = true
  config.s3_access_key_id = 'AKIAIC726VQYAEORRXQQ'
  config.s3_secret_access_key = 'I2JtaAFjjahdgikdqzf4BLQOuSTVTnQILNerufXh'
  config.s3_bucket_name = 'glacial-refuge-9251'
  #config.s3_region = 'fill_in_your_buckets_region_here' # this one's not always required, default is 'us-east-1'
end

