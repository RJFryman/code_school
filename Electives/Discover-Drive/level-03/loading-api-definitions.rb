# Before

authorization_code = params[:code]

client.code = authorization_code
client.fetch_access_token!

drive =

# After

authorization_code = params[:code]

client.code = authorization_code
client.fetch_access_token!

drive = client.discovered_api('drive', 'v2')
