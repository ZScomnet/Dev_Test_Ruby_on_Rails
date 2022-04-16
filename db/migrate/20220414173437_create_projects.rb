class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :type
      t.string :string
      t.string :location

      t.timestamps
    end
  end
end
