class Period < ActiveRecord::Base
    belongs_to :user

    validates :month, :start_day, :note, presence: true
    validates :start_day, length: { maximum: 2 }
   
end
