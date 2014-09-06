# Before

authorization_code = params[:code]

client.code = authorization_code

# After

authorization_code = params[:code]

client.code = authorization_code
client.fetch_access_token!
