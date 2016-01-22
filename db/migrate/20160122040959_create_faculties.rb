class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :faculty_name
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
