class User < ActiveRecord::Base

	has_many :relationships, foreign_key: "follower_id", dependent: :destroy
	has_many :followed_users, through: :relationships, source: :followed
	has_many :reverse_relationships, foreign_key: "followed_id",
									 class_name: "Relationship",
									 dependent: :destroy
	has_many :followers, through: :reverse_relationships,source: :follower
	has_many :records
end
