module Seeders
  module Books
    class << self
      def seed
        book_collection.each do |author, title|
          Book.find_or_create_by(title: title, author: author)
        end
      end

      def book_collection
        {
          harper_lee: 'To Kill a Mockingbird',
          khaled_hosseini: 'The Kite Runner',
          jack_dewolf: 'The adventures of jack dewolf',
          jk_rowling: 'Harry Potter and the Sorcerer\'s Stone'
        }
      end
    end
  end
end
