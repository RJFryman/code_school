# Before

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'

result = client.execute(
  api_method: drive.children.list,
  parameters: { folderId: folder_id }
)

# After

folder_id = 'VGUzUzhubVRYpGUXhDb1J2saTFk'

result = client.execute(
  api_method: drive.files.list,
  parameters: { q: "'VGUzUzhubVRYpGUXhDb1J2saTFk' in parents " }
)
