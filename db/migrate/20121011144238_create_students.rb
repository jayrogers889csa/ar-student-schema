require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :teacher_id
      super
      t.string :gender
      t.date :birthday
    end
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
