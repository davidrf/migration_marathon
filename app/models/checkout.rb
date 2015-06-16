class Checkout < ActiveRecord::Base
  belongs_to :book
  validates :book_id, presence: true
end
