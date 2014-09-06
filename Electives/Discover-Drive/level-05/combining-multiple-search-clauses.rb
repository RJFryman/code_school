# Before

result = client.execute(
  api_method: drive.files.list,
  parameters: { q: 'mimeType = "audio/mpeg"' }
)

# After

result = client.execute(
  api_method: drive.files.list,
  parameters: { q: 'mimeType = "audio/mpeg" and description contains "bark"' }
)
