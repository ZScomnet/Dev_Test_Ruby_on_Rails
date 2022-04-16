class FixThumnbnail < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :string
    add_column :projects, :thumbnail, :text    
  end
end
