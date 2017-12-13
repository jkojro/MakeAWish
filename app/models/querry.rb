class Querry < ApplicationRecord
  belongs_to :wish
  has_many :myanswers, dependent: :destroy
  
end
