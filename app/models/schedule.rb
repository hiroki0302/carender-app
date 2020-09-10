class Schedule < ApplicationRecord
  with_options presence: true do
    validates :plan
    validates :memo
    validates :start_time
    validates :end_time
  end
end
