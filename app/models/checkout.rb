class Checkout < ActiveRecord::Base
  validates_presence_of :book_id, :patron
  validates :book_id, numericality: true

  belongs_to :book

end
