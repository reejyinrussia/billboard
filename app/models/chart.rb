class Chart < ApplicationRecord
  validates_presence_of :name
  has_many :songs
end
