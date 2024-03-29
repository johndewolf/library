class Category < ActiveRecord::Base
  validates_presence_of :name

  has_many :categorizations
  has_many :books, through: :categorizations

end
