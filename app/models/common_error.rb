class CommonError < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "1135x1200", :thumb => "600x600" }

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  
  validates :description, :error_msg,  presence: true
end
