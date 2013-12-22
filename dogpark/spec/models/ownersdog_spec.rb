require 'spec_helper'

describe Ownersdog do
  it { should validate_presence_of(:owner_id) }
  it { should validate_numericality_of(:owner_id) }

  it { should validate_presence_of(:dog_id) }
  it { should validate_numericality_of(:dog_id) }

  it { should belong_to(:owner) }
  it { should belong_to(:dog) }
end
