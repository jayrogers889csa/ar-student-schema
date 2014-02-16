require_relative '../../db/config'

class Student < Person

  has_many :enrollments
  has_many :teachers, through: :enrollments

  validates :email, uniqueness: true, format: { with: /.+@[^.]+\..{2,}/, message: "only proper email format allowed" }
  validates :age, numericality: { greater_than: 5 }
  validate :check_phone

end
