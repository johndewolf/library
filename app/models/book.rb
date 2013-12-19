class Book < ActiveRecord::Base
  validates_presence_of :title
  validates :rating, inclusion: 1..100, allow_blank: true

  has_many :checkouts

  def self.seed
    @book_database.each do |author, title|
      Book.find_or_create_by(title: title, author: author)
    end
  end


  @book_database = {
    harper_lee: 'To Kill a Mockingbird',
    khaled_hosseini: 'The Kite Runner',
    jack_dewolf: 'The adventures of jack dewolf',
    jk_rowling: 'Harry Potter and the Sorcerer\'s Stone'
  }
end
