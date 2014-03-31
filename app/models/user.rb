class User < ActiveRecord::Base
  has_secure_password
  has_many :posts, foreign_key: "creator_id"
  has_many :comments

  validates :username, presence: true

end
