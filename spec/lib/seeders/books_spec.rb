require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  it "seeds the database" do
    seeder.seed
    expect(Book.first).to be_true
  end

  it "does not seed duplicates" do
    seeder.seed
    seeder.seed
    expect(Book.where(title: 'To Kill a Mockingbird').count).to eql(1)
  end
end
