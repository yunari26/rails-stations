class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true, length: { is: 4 }, format: { with:/\A[0-9]+\z/ }
  validates :description, presence: true, length: { maximum: 255 }
  validates :image_url, presence: true, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :is_showing, inclusion: {in: [true, false]} 
end
