require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
