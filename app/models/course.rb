class Course < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged
 
	validates :code, :name, :description, presence: true  

  belongs_to :lecturer
  has_many :material
end
