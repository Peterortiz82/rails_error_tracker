class CommonError < ActiveRecord::Base
  validates :description, :error_msg,  presence: true
end
