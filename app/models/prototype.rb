class Prototype < ActiveRecord::Base
  has_many :captured_images
  belongs_to :user
  accepts_nested_attributes_for :captured_images
  validates :title, presence: true
end
