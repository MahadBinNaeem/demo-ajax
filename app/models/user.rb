class User < ApplicationRecord
	validates :name, :address, presence: true
	validates :email, :contact, presence: true, uniqueness: false
end
