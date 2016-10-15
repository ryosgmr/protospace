class RenameUseToCapturedImages < ActiveRecord::Migration
  def change
    rename_column :captured_images, :use, :position
  end
end
