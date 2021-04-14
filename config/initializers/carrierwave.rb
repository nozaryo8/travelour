CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'ap-northeast-1'
    }
    config.fog_directory = "travelour"
    config.cache_storage = :fog     # 本番時はS3にファイルを保存する
  else
    config.storage = :file          # 開発・テスト時はローカルにファイルを保存する
  end

end