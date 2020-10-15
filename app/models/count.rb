class Count < ApplicationRecord
  belongs_to :question

  with_options presence: true do
    validates :right_wrong 
    validates :level
    validates :answer_day
  end

end
