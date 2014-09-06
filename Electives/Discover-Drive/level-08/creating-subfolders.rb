# Before

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'
parent_folder_id = 'ZBa627sdgf4361fJ6LX52347'

# retrieve folder
metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: folder_id }
)

# move folder inside other folder
result = client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  parameters: { 'fileId' => metadata.id }
)

# After

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'
parent_folder_id = 'ZBa627sdgf4361fJ6LX52347'

# retrieve folder
metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: folder_id }
)

metadata.parents = [{ id: parent_folder_id }]

# move folder inside other folder
result = client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  parameters: { 'fileId' => metadata.id }
)
