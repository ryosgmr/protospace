class CapturedImage < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :image, CapturedImage
end
