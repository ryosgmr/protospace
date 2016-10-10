class AddImageToCapturedImage < ActiveRecord::Migration
  def change
    add_column :captured_images, :image, :text
  end
end
