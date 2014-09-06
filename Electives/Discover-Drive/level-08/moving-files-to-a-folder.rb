# Before

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'
folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'

# retrieve file
metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: file_id }
)

# move file into folder
result = client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  parameters: { 'fileId' => metadata.id }
)

# After

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'
folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'


# retrieve file
metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: file_id }
)

metadata.parents = [{ id: folder_id }]

# move file into folder
result = client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  parameters: { 'fileId' => metadata.id }
)
