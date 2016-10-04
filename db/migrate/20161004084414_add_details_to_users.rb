class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_of, :string
    add_column :users, :works, :text
    add_column :users, :profile, :text
  end
end
