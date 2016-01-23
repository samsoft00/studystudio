class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :material_name
      t.string :material_file
      t.string :description
      t.boolean :monetize
      t.integer :amount
      t.boolean :save_status
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
