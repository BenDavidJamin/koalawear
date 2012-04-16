Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '75x113>', # thumbs under image
    :small => '150x225>', # images on category view
    :product => '300x450>', # full product image
    :large => '750x1125>'  # light box image
  }
end