# Before

require 'google/api_client'

client = Google::APIClient.new

# AFter

require 'google/api_client'

client = Google::APIClient.new
client.authorization.client_id = ENV['client_id']
client.authorization.client_secret = ENV['client_secret']
client.authorization.redirect_uri = ENV['redirect_uri']
