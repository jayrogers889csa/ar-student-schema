require_relative '../../db/config'

class Enrollment < ActiveRecord::Base

  belongs_to :teacher
  belongs_to :student

end
