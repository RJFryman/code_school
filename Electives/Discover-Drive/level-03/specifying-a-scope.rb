# Before

require 'google/api_client'

client = Google::APIClient.new
client.authorization.client_id = ENV['client_id']
client.authorization.client_secret = ENV['client_secret']
client.authorization.redirect_uri = ENV['redirect_uri']

# After

require 'google/api_client'

client = Google::APIClient.new
client.authorization.client_id = ENV['client_id']
client.authorization.client_secret = ENV['client_secret']
client.authorization.redirect_uri = ENV['redirect_uri']

client.authorization.scope = 'https://www.googleapis.com/auth/drive.file'
