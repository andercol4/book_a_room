class Appointment < ActiveRecord::Base
  validates :start_time, :end_time, overlap: { scope: 'room_number',
                                               message_content: 'overlaps with Users other meetings.' }

end
