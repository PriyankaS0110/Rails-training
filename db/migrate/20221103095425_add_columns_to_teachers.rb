class AddColumnsToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :student_email, :string
  end
end
