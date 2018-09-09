class Wish < ApplicationRecord
    belongs_to :user
    has_many :querries, dependent: :destroy

    validates :name, :mywish, :reciever, presence: true
    
    def is_done?
        if (!querries.first.blank?)
            if ((querries.first.isdone?) && (querries.second.isdone?) && (querries.last.isdone?))
                true
            end
        else
            false
        end
    end

end
