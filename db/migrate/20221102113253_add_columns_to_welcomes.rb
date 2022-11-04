class AddColumnsToWelcomes < ActiveRecord::Migration[7.0]
  def change
    add_column :welcomes, :address, :string
  end
end
