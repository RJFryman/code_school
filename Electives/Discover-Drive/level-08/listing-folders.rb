# Before

result = client.execute(
  api_method: drive.files.list
)

# After

result = client.execute(
  api_method: drive.files.list,
  parameters: { q: 'mimeType = "application/vnd.google-apps.folder"' }
)
