module Seeders
  module Categories
    class << self
      def seed
        book_genres.each do |name|
          Category.find_or_create_by(name: name)
        end
      end

      def book_genres
        [
          'Fiction',
          'Nonfiction',
          'Erotic Nonfiction',
          'Horror'
        ]
      end
    end
  end
end
