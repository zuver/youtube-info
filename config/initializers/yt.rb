Yt.configure do |config|
  config.api_key = ENV.fetch('API_KEY') # You also could just hard-code an API key if you want to test locally
end
