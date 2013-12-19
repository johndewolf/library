require 'spec_helper'

describe Seeders::Categories do
  let(:seeder) { Seeders::Categories }

  it "seeds the database" do
    seeder.seed
    expect(Category.first).to be_true
  end

  it "does not seed duplicates" do
    seeder.seed
    seeder.seed
    expect(Category.where(name: 'Fiction').count).to eql(1)
  end
end
