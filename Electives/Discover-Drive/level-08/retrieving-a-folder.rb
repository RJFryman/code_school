# Before

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'

result = client.execute(

)

# After

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'

result = client.execute(
  api_method: drive.files.get,
  parameters: {
    fileId: folder_id
  }
)
