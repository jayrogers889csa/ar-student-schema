require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      super
      t.timestamps
    end
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
