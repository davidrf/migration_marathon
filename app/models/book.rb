class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :rating, numericality: { only_integer: true }
end
