# Before

client.code = params[:code]

# After

client.code = params[:code] if params[:code]
client.fetch_access_token!
