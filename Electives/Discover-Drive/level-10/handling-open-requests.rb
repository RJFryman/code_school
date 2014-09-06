# Before

state = MultiJson.decode(params[:state])

result = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: state['ids'][0] }
)

# After

state = MultiJson.decode(params[:state])

if state['action'] == 'open'
  file_ids = state['ids']
  result = client.execute(
    api_method: drive.files.get,
    parameters: {
      fileId: state['ids'][0]
    }
  )
end
