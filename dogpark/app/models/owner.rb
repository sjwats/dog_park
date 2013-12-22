class Owner < ActiveRecord::Base
  has_many :ownersdogs
  has_many :dogs,
    through: :ownersdogs
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
