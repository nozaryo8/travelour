require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: ENV['AWS_DEFAULT_REGION']
    }
    config.fog_directory = 'AWS_BUCKET'
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end
  
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end