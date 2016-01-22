class AddTokenToLecturer < ActiveRecord::Migration
  def change
    add_reference :lecturers, :token, index: true, foreign_key: true
  end
end
