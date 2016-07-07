class Post < ActiveRecord::Base

  has_attached_file :image, 
    :styles => {
      thumb: '100x100>',
      square: '400x400#',
      small: '400x240#',
      medium: '700x420#',
      large: '1000x600#'
    },
    :path => '/:class/:attachment/:id_partition/:style/:filename',
    :url =>':s3_domain_url'
  


  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
