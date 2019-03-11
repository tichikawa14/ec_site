CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['S3_ACCESS_KEY'],                        # required unless using use_iam_profile
      aws_secret_access_key: ENV['S3_SECRET_KEY'],                        # required unless using use_iam_profile
      region:                ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = ENV['S3_BUCKET']                                      # required

    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  else
    config.storage :file
  end
end