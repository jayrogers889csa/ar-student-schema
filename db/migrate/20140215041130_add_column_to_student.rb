require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddColumnToStudent < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
  end
    # HINT: checkout ActiveRecord::Migration.create_table
end
