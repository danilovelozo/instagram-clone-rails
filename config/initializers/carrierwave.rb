CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:     'xxx',                        
    aws_secret_access_key: 'yyy',                        
  }
  config.storage = :fog
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = ENV['FOG_DIRECTORY']
end