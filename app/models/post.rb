class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many_attached :images
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :season
  belongs_to :point

  geocoded_by :place
  after_validation :geocode, if: :place_changed?

  with_options presence: true do
    validates :title, :text, :recommend, :place
    validates :prefecture_id, :season_id, :point_id, numericality: { other_than: 1, message: "項目を選択してください" }
    validates :images, length: { minimum: 1, maximum: 3, message: "は1枚以上3枚以下にしてください" }
  end

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

end
