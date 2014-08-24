# Before

module ImageExportable

end

# After

module ImageExportable
  def send_image(image_path)
    send_file(image_path, type: 'image/jpeg',  disposition: 'inline')
  end
end
