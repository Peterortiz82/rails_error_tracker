class CommonError < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "1135x1200", :thumb => "600x600" }
  is_impressionable :column_name => :impressions_count, :unique => :session_hash, :counter_cache => true
  
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates :image, presence: true
  validates :description, :error_msg,  presence: true
end
