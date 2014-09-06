# Before

file = Google::APIClient::UploadIO.new('/files/pug-snores.mp3', 'audio/mpeg')

metadata = {

}

# After

file = Google::APIClient::UploadIO.new('/files/pug-snores.mp3', 'audio/mpeg')

metadata = {
  title: 'Snoring Pug',
  description: 'A pug snoring loudly.',
  mimeType: 'audio/mpeg'
}
