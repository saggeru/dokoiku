class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  geocoded_by :place
  after_validation :geocode, if: :place_changed?

  with_options presence: true do
    validates :title, :text, :images, :recommend, :place
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  end
end
