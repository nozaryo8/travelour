CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'ap-northeast-1'
    }
    config.storage :fog
    config.fog_directory = "travelour"
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end

end