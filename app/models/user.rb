class User < ActiveRecord::Base
  has_secure_password
  has_many :posts, foreign_key: "creator_id"
  has_many :comments

  validates :username, presence: true, uniqueness: true
  validates :email, format: { with: /\w+[._$!]?\w+@\w+.\w{2,6}/,
    message: "Only valid emails allowed" }
  validates :password, length: { in: 4..10 }
end
