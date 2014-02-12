require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, uniqueness: true, format: { with: /.+@[^.]+[.].{2,}/,
      message: "only proper email format allowed" }
  validates :age, numericality: { greater_than: 5 }

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end

  def name
    "#{first_name} #{last_name}"
  end

end
