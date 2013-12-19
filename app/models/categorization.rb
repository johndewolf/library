class Categorization < ActiveRecord::Base
  validates_presence_of :book
  validates_presence_of :category

  belongs_to :book
  belongs_to :category
end
