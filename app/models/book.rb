class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations


  validates :title, presence: true
  validates :author, presence: true
  validates :favorite, inclusion: { in: [true, false] }, exclusion: { in: [nil], message: 'nil is not an accepted value' }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_nil: true
end
