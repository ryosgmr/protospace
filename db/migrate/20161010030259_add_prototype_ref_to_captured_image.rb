class AddPrototypeRefToCapturedImage < ActiveRecord::Migration
  def change
    add_column :captured_images, :prototype, :string
    add_column :captured_images, :references, :string
  end
end
