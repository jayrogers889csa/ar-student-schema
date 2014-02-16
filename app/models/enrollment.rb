require_relative '../../db/config'

class Enrollment < ActiveRecord::Base

  belongs_to :teacher, foreign_key: :teacher_id
  belongs_to :student, foreign_key: :student_id

end
