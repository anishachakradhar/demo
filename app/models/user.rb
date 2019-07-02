class User < ApplicationRecord
	validates_presence_of :name, :email 
	validates_format_of :email, :with => /\A\S+@.+\.\S+\z/

	devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 12
 
	has_many :microposts
end
