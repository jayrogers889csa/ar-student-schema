require './app/models/teacher'
require './app/models/student'
require './app/models/enrollment'

module NameConverter
  def self.convert
    Student.all.each do |student|
      student.name = "#{student.first_name} #{student.last_name}"
      student.save!
    end
  end
end
