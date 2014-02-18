require_relative '../config'

class RemoveNamesColumnsFromStudents < ActiveRecord::Migration
  def down
    remove_column :students, :first_name
    remove_column :students, :last_name
  end
end
