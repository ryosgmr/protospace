class AddUseToCapturedImages < ActiveRecord::Migration
  def change
    add_column :captured_images, :use, :string
  end
end
