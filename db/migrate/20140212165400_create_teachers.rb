require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
