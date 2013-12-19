require 'spec_helper'

describe Book do
  it { should have_valid(:title).when('Old Man') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:rating).when(50, '') }
  it { should_not have_valid(:rating).when(101) }

  it "seeds the database" do
    Book.seed
    expect(Book.first).to be_true
  end

  it "does not seed duplicates" do
    Book.seed
    Book.seed
    expect(Book.where(title: 'To Kill a Mockingbird').count).to eql(1)
  end
end
