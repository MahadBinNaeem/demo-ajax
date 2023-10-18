class User < ApplicationRecord
	after_create_commit {broadcast_prepend_to "users"}
	after_update_commit {broadcast_replace_to "users"}
	validates :name, :address, presence: true
  validates :email, :contact, presence: true, uniqueness: true
end
