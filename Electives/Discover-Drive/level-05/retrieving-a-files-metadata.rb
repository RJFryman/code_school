# Before

file_id = '0B7Hu6LPIcm1161pGUXhDb1J2saTFk'

result = client.execute(

)

# After

file_id = '0B7Hu6LPIcm1161pGUXhDb1J2saTFk'

result = client.execute(
	api_method: drive.files.get,
  parameters: { fileId: file_id }
)
