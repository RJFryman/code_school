# Before

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: file_id }
)

metadata.title = 'A Grunting Pug'

client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  parameters: {
    'fileId' => metadata.id
  }
)

# After

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

metadata = client.execute(
  api_method: drive.files.get,
  parameters: { fileId: file_id }
)

metadata.title = 'A Grunting Pug'

file = Google::APIClient::UploadIO.new('/files/pug-grunts.mp3', 'audio/mpeg')

client.execute(
  api_method: drive.files.update,
  body_object: metadata,
  media: file,
  parameters: {
    'fileId' => metadata.id,
    'uploadType' => 'multipart'
  }
)
