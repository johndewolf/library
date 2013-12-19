require 'spec_helper'

describe Book do
  it { should have_valid(:title).when('Old Man') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:rating).when(50, '') }
  it { should_not have_valid(:rating).when(101) }

end
