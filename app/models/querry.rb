class Querry < ApplicationRecord
  belongs_to :wish
  has_many :myanswers
  
end
