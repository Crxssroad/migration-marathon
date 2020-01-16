class Checkout < ActiveRecord::Base
  belongs_to :book

  validates :name, presence: true
  validates :book_id, presence: true
end
