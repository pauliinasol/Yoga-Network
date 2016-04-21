class Studio < ActiveRecord::Base
  has_many :comments
  has_many :likes
end
