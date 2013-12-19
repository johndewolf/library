require 'spec_helper'

describe Checkout do
  it { should have_valid(:book_id).when(12) }
  it { should_not have_valid(:book_id).when('', nil, 'asf') }

  it { should have_valid(:patron).when('John Smith') }
  it { should_not have_valid(:patron).when(nil,'') }

  it { should belong_to(:book) }
end
