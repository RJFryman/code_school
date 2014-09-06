# Before

state = MultiJson.decode(params[:state])

if state['action'] == 'create'
  result = client.execute(

  )
end

# After

state = MultiJson.decode(params[:state])

if state['action'] == 'create'
  result = client.execute(
    api_method: drive.files.get,
    parameters: {
      fileId: state['folderId']
    }
  )
end
