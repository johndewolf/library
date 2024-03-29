class Book < ActiveRecord::Base
  validates_presence_of :title
  validates :rating, inclusion: 1..100, allow_blank: true

  has_many :checkouts

  has_many :categorizations
  has_many :categories, through: :categorizations


end
