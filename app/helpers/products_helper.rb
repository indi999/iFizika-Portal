module ProductsHelper
  def pdf_path(file)
    File.join('/pdf', file).to_s
  end
  def image_path(file)
    File.join('/image', file).to_s
  end



end


