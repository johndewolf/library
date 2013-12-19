require 'spec_helper'

describe Categorization do
  it { should belong_to :book }
  it { should belong_to :category }

  it { should validate_presence of :book }
  it { should validate_presence of :category }

  # it "has many books" do
  #   book1 = Book.create(title: 'foo')
  #   book2 = Book.create(title: 'bar')
  #   category1 = Category.create(name: 'faz')
  #   Categorization.create(book: book1, category: category1)
  #   Categorization.create(book: book2, category: category1)
  #   expect(Categorization.all.count).to eq(2)
  # end
end
