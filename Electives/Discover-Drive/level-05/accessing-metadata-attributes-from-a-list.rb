# Before

result = client.execute(
  api_method: drive.files.list
)

# After

result.data.items.each do |item|
puts item.title
end
