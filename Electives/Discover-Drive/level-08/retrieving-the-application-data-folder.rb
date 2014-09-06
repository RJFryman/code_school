# Before

application_data_folder_id = '8yE2pJoAB154qR11TLyE'

result = client.execute(

)

# After

application_data_folder_id = '8yE2pJoAB154qR11TLyE'

result = client.execute(
  api_method: drive.files.get,
  parameters: {
    fileId: "appdata"
  }
)
