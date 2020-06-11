class Period < ActiveRecord::Base
    belongs_to :user

    validates :month, :start_day, :note, presence: true
   

end
