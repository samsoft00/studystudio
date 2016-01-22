class Lecturer < ActiveRecord::Base
	attachment :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  # validates :token_id, length: { in: 10..20 }

  has_many :courses
  
end
