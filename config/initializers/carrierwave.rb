CarrierWave.configure do |config|
  config.fog_credentials = {
        :provider  => 'AWS',  # required
        :aws_access_key_id  => ENV['GETFIT_AWS_ACCESS_KEY'],  # required
        :aws_secret_access_key  => ENV['GETFIT_AWS_SECRET_KEY'],  # required
        :region => 'eu-west-1'  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = 'fitnessproject'  # required
      config.fog_public  = true  # optional, defaults to true
    end