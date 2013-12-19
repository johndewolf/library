require 'spec_helper'

describe Checkout do
  it { should have_valid(:book_id).when(12) }
  it { should_not have_valid(:book_id).when('', nil, 'asf') }

  it { should have_valid(:patron).when('John Smith') }
  it { should_not have_valid(:patron).when(nil,'') }

  it "associates the book id in the checkout with book title" do
    book = Book.create(title: 'Old Man')
    checkout = Checkout.new(book_id: book.id, patron: 'John Smith')
    expect(checkout.book.title).to eql('Old Man')
  end

end
