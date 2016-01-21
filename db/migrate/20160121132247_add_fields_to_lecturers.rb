class AddFieldsToLecturers < ActiveRecord::Migration
  def change
    add_column :lecturers, :username, :string
    add_column :lecturers, :first_name, :string
    add_column :lecturers, :last_name, :string
    add_column :lecturers, :title, :string
    add_column :lecturers, :bio, :text

    add_index :lecturers, :username
  end
end
