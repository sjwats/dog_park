class Dog < ActiveRecord::Base
  has_many :ownersdog
  has_many :owners,
    through: :ownersdog
  validates_presence_of :name

end
