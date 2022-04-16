class ChangeTypeEnum < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :type
    add_column :projects, :type, :integer, default: 0
  end
end
