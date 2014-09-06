# Before

result = client.execute(
  api_method: drive.files.insert,
  body_object: metadata,
  media: file,
  parameters: {
    'uploadType' => 'resumable'
  }
)

for n in 0..4
  if result.resumable_upload.resumable?
    sleep(1 << n)
    result =
  else
    break
  end
end

# After

result = client.execute(
  api_method: drive.files.insert,
  body_object: metadata,
  media: file,
  parameters: {
    'uploadType' => 'resumable'
  }
)

for n in 0..4
  if result.resumable_upload.resumable?
    sleep(1 << n)
    result = client.execute(result.resumable_upload)
  else
    break
  end
end
