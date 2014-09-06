# Before

for n in 0..4
  if result.resumable_upload.resumable?
    sleep(1 << n)
    result = client.execute(result.resumable_upload)
  else
    break
  end
end

message = 'The upload successfully completed!'

# After

for n in 0..4
  if result.resumable_upload.resumable?
    sleep(1 << n)
    result = client.execute(result.resumable_upload)
  else
    break
  end
end
if result.resumable_upload.complete?
	message = 'The upload successfully completed!'
end
