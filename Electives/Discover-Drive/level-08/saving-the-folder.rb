# Before

metadata = {
  title: 'Sounds of Pugs',
  description: 'A collection of the funny sounds that Pugs make.',
  mimeType:
}

result = client.execute(

)

# After

metadata = {
  title: 'Sounds of Pugs',
  description: 'A collection of the funny sounds that Pugs make.',
  mimeType: 'application/vnd.google-apps.folder'
}

result = client.execute(
  api_method: drive.files.insert,
  body_object: metadata
)
