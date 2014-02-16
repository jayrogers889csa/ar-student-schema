require_relative '../../db/config'

class Teacher < Person

  has_many :enrollments
  has_many :students, through: :enrollments

  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Only proper email format allowed" }

end
