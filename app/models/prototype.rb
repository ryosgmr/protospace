class Prototype < ActiveRecord::Base
  has_many :captured_images
  accepts_nested_attributes_for :captured_images
  validates :title, presence: true
end
