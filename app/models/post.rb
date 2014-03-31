class Post < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :comments

  validates :title, :url, presence: true
end
