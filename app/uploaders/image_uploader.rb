class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  #include CarrierWave::MiniMagick
  include CarrierWave::RMagick
  
  if Rails.env.production?    # 本番時はS3にファイルを保存する
    storage :fog
  else
    storage :file             # 開発・テスト時はローカルにファイルを保存する
  end
  #リサイズ、画像形式を変更に必要
  
  if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'
      config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        region: 'ap-northeast-1',
        path_style: true
      }
      config.fog_directory = 'travelour'
      config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
    end
  end
    
  #上限変更
    process :resize_to_limit => [1000, 1000]

  #JPGで保存
    process :convert => 'jpg'

  
  #サムネイルを生成
  version :thumb do
    process :resize_to_limit => [100, 100]
  end

  
  # jpg,jpeg,gif,pngのみ
  def extension_white_list
    %w(jpg jpeg png)
  end

  #ファイル名を変更し拡張子を同じにする
  

  #日付で保存
  def filename
    if original_filename.present?
      time = Time.now
      name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
      name.downcase
    end
  end
  # Choose what kind of storage to use for this uploader:
  
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
