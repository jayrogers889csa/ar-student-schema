require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  has_many :enrollments, foreign_key: :teacher_id
  has_many :students, through: :enrollments

  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Only proper email format allowed" }

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end

  def name
    "#{first_name} #{last_name}"
  end

  def check_phone
    if self.phone.gsub('/\D/', "").length < 10
      errors.add(:phone, "numbers require at least 10 digits")
    end
  end

end
