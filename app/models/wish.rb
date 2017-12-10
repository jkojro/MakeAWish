class Wish < ApplicationRecord
    belongs_to :user
    has_many :querries

end
