# Before

permission = {
  role: 'writer',
  type: 'user',
  value: 'mixmaster91552@gmail.com'
}

file_id = '0B7Hu6LPIchDb1J2sm1161pGUXaTFk'

result = client.execute(

)

# After

permission = {
  role: 'writer',
  type: 'user',
  value: 'mixmaster91552@gmail.com'
}

file_id = '0B7Hu6LPIchDb1J2sm1161pGUXaTFk'

result = client.execute(
  api_method: drive.permissions.insert,
  body_object: permission,
  parameters: { 'fileId' => file_id }
)
