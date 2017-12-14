class Querry < ApplicationRecord
  belongs_to :wish
  has_many :myanswers, dependent: :destroy
  
  def isdone?
      if ((myanswers.empty?) || (myanswers.last.reply.downcase != answer.downcase))
          false
       else
           true
      end
  end
  
end


