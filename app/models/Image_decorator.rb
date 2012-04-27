Spree::Image.class_eval do
  has_attached_file :attachment,
   :styles => {
    :mini => '75x113>', # thumbs under image
    :small => '150x225>', # images on category view
    :product => '300x450>', # full product image
    :large => '750x1125>'},  # light box image
    :storage => :s3,
    :bucket => ENV['S3_BUCKET_NAME'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
end