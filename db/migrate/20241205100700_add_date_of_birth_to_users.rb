class AddDateOfBirthToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :date_of_birth, :datetime
  end
end