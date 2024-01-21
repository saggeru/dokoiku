class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  with_options presence: true do
    validates :name, :image
    validates :dokoiku_name, uniqueness: true, format: { with: /\A[0-9a-zA-Z]{,2}\z/ }
  end
  validates :password, format: { with: /\A[a-zA-Z0-9]{8,}\z/, message: "Include both letters and numbers" }

end
