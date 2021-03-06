require_relative '../../db/config'

class Person < ActiveRecord::Base

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
