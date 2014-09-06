# Before

if result.resumable_upload.complete?
  message = 'The upload successfully completed!'
end

# After

if result.resumable_upload.complete?
  message = 'The upload successfully completed!'
elsif result.resumable_upload.expired?
  message = "The upload expired"
end
