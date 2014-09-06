# Before

channel_id = 123
file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

result = client.execute(

)

# After

channel_id = 123
file_id = '0B7Hu6LPIcm11sd2365321b1J2saTFk'

result = client.execute(
 api_method: drive.channels.stop,
  parameters: {
    id: channel_id,
    resourceId: file_id
  }
)
