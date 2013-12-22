require 'spec_helper'

describe Owner do
  let(:blank_values) {[nil, '']}
  it { should have_valid(:first_name).when('John', 'Sarah') }
  it { should_not have_valid(:first_name).when(*blank_values) }

  it { should have_valid(:last_name).when('Watson', 'Sarah') }
  it { should_not have_valid(:last_name).when(*blank_values) }

  it { should have_valid(:email).when('john@web.com', 'john345@internet.com') }
  it { should_not have_valid(:email).when('john.com', 'john@com', 'john', '.com') }

  it { should have_many(:ownersdogs) }
  it { should have_many(:dogs).through(:ownersdogs) }
end
