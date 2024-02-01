class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_one_attached :image

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  with_options presence: true do
    validates :name, :image
    validates :dokoiku_name, uniqueness: true, format: { with: /\A[0-9a-zA-Z]{2,}\z/ }
  end
  validates :password, format: { with: /\A[a-zA-Z0-9]{8,}\z/, message: "Include both letters and numbers" }

end
