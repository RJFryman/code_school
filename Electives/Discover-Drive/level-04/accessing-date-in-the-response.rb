# Before

file = Google::APIClient::UploadIO.new('/files/pug-snores.mp3', 'audio/mpeg')

metadata = {
  title: 'Snoring Pug',
  description: 'A pug snoring loudly.',
  mimeType: 'audio/mpeg'
}

result = client.execute(
  api_method: drive.files.insert,
  body_object: metadata,
  media: file,
  parameters: {
    'uploadType' => 'multipart'
  }
)

created_at =

# After

file = Google::APIClient::UploadIO.new('/files/pug-snores.mp3', 'audio/mpeg')

metadata = {
  title: 'Snoring Pug',
  description: 'A pug snoring loudly.',
  mimeType: 'audio/mpeg'
}

result = client.execute(
  api_method: drive.files.insert,
  body_object: metadata,
  media: file,
  parameters: {
    'uploadType' => 'multipart'
  }
)

created_at =result.data.createdDate
