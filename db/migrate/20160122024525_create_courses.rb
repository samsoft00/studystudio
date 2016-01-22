class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :thumbnail
      t.boolean :publish
      t.string :slug
      t.references :lecturer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
