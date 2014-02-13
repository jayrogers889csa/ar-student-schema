require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students

  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Only letters allowed" }

  def name
    "#{first_name} #{last_name}"
  end

  def email
  end

  def phone
  end


end
