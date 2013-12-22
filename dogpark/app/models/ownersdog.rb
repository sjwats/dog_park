class Ownersdog < ActiveRecord::Base
  belongs_to :owner
  belongs_to :dog
  validates_presence_of :owner_id
  validates_presence_of :dog_id
  validates_numericality_of :owner_id
  validates_numericality_of :dog_id
end
