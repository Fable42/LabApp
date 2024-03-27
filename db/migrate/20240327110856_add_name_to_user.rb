class AddNameToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :second_name, :string, null: false
  end
end