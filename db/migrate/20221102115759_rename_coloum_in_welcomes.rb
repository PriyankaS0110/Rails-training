class RenameColoumInWelcomes < ActiveRecord::Migration[7.0]
  def change
    rename_column :welcomes, :email, :student_email 
  end
end
