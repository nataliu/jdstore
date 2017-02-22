CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAIO575NHSO3YGLPBA"],

      aws_secret_access_key: ENV["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"],        

      region:                ENV["ap-northeast-1"]

    }
    config.fog_directory  = ENV["jdstore01"]


  else
    config.storage :file
  end
end
