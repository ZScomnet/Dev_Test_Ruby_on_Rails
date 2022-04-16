class FixColumnNull < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :type, :integer, null: false
  end
end
