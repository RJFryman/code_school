# Before

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

result = client.execute(

)

# After

file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

client.execute(
  api_method: drive.files.trash,
  parameters: { fileId: file_id } 
)
