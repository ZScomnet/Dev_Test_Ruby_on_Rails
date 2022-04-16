class FixColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :type, :integer, default: nil
  end
end
