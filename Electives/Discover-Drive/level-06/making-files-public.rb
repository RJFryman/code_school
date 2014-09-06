# Before

permission = {

}

file_id = '0B7Hu6LPIchDb1J2sm1161pGUXaTFk'

result = client.execute(
  api_method: drive.permissions.insert,
  body_object: permission,
  parameters: { 'fileId' => file_id }
)

# After

permission = {
  role: 'reader',
  type: 'anyone'
}

file_id = '0B7Hu6LPIchDb1J2sm1161pGUXaTFk'

result = client.execute(
  api_method: drive.permissions.insert,
  body_object: permission,
  parameters: { 'fileId' => file_id }
)
