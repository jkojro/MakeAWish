class Querry < ApplicationRecord
  belongs_to :wish
  has_one :myanswer
end
