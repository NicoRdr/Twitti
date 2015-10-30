class User < ActiveRecord::Base
	has_many :messages
	has_many :relationships, foreign_key: "followed_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :followers, through: :relationships
  has_many :followings, through: :relationships, source: :followed

end
