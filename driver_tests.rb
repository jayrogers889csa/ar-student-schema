require './app/models/teacher'
require './app/models/student'
require './app/models/enrollment'


# def create_person(type, first_name, last_name, email, birthday)
#   if type == 'student'
#     Student.create(first_name: first_name, last_name: last_name, email: email, birthday: birthday)
#   else
#     Teacher.create(first_name: first_name, last_name: last_name, email: email, birthday: birthday)
#   end
# end

# first_names = []
# last_names = []
# birthday = []
# email = []

# 9.times do |i|
#   create_person('student', first_names[i])
#   create_person('teacher', first_names[i])
# end

bran = Student.new(first_name: "bran", last_name: "jones", email: "k234@asd1h.com", birthday: '01/02/1990')
mikey = Student.new(first_name: "mikey", last_name: "giraffe", email: "peng234uin@zoo.com", birthday: '01/01/1990' )
franky = Student.new(first_name: "franky", last_name: "ocean", email: "ocea34n@zoo.com", birthday: '01/01/1990')
lil = Student.new(first_name: "lil", last_name: "kid", email: "k1234id@zoo.com", birthday: '01/01/1990')
jules = Student.new(first_name: "jules", last_name: "roark", email: "roa234rk@zoo.com", birthday: '01/01/1990')
sally = Student.new(first_name: "sally", last_name: "paradise", email: "sal234@zoo.com", birthday: '01/01/1990')
nelly = Student.new(first_name: "nelly", last_name: "cassady", email: "cas234sady@zoo.com", birthday: '01/01/1990')
jayda = Student.new(first_name: "jayda", last_name: "rogers", email: "rog234ers@zoo.com", birthday: '01/01/1990')
josephine = Student.new(first_name: "josephine", last_name: "wilmoth", email: "wilm234oth@zoo.com", birthday: '01/01/1990')

bran.save
mikey.save
franky.save
lil.save
jules.save
sally.save
nelly.save
jayda.save
josephine.save


bob = Teacher.new(first_name: "bob", last_name: "jones", email: "wer@qwerqdgfer.com")
jerry = Teacher.new(first_name: "jerry", last_name: "giraffe", email: "penguin@zoo.com")
frank = Teacher.new(first_name: "frank", last_name: "ocean", email: "ocean@zoo.com")
billy = Teacher.new(first_name: "billy", last_name: "kid", email: "kid@zoo.com")
howard = Teacher.new(first_name: "howard", last_name: "roark", email: "roark@zoo.com")
sal = Teacher.new(first_name: "sal", last_name: "paradise", email: "sal@zoo.com")
neal = Teacher.new(first_name: "neal", last_name: "cassady", email: "cassady@zoo.com")
jay = Teacher.new(first_name: "jay", last_name: "rogers", email: "rogers@zoo.com")
joe = Teacher.new(first_name: "joe", last_name: "wilmoth", email: "wilmoth@zoo.com")


bob.save
jerry.save
frank.save
billy.save
howard.save
sal.save
neal.save
jay.save
joe.save

# p Teacher.all

# p Student.where(first_name: 'sally')

# p Teacher.take

# jerry.save
# frank.save
# billy.save

all_teachers = Teacher.all
all_students = Student.all


all_students.each_slice(all_teachers.length) do |slice|
  slice.each_with_index do |student, index|
    student.teacher_id = all_teachers[index].id
    student.save
  end
end

all_students.each_with_index do |student, index|
  Enrollment.create(teacher_id: student.teacher_id, student_id: index+1)
end

p Enrollment.all

p Student.all

p Student.take.name
