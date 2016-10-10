class AddColumnPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :title, :string
    add_column :prototypes, :catch_copy, :text
    add_column :prototypes, :concept, :text
  end
end
