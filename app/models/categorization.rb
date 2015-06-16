class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :category

  validates :book_id, presence: true
  validates :category_id, presence: true
end
