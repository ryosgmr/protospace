class Prototype < ActiveRecord::Base
  has_many :captured_images, dependent: :delete_all
  belongs_to :user
  accepts_nested_attributes_for :captured_images, reject_if: proc { |attributes| attributes['image'].blank? }
  validates :title, :catch_copy, :concept, presence: true
end
