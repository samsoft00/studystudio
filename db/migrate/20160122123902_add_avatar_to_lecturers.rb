class AddAvatarToLecturers < ActiveRecord::Migration
  def change
    add_column :lecturers, :avatar_id, :string
  end
end
