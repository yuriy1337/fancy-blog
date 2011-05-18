class Image < Element
  
  has_attached_file :element,
                    :url  => "/assets/posts/:post_id/:type/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/posts/:post_id/:type/:id/:style/:basename.:extension"
  validates_attachment_content_type :element, :content_type => ['image/jpeg', 'image/png']
end
