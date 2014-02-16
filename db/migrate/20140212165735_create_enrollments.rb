require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
