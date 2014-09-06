# Before

property = {
  key: 'location',
  value: 'Florida'
}

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

result = client.execute(

)

# After

property = {
  key: 'location',
  value: 'Florida'
}

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

result = client.execute(
api_method: drive.properties.insert, body_object: property, parameters: { 'fileId' => file_id }
)
