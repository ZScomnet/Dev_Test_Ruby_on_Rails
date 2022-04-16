class DropContent < ActiveRecord::Migration[7.0]
  def change
    drop_table :contents
  end
end
