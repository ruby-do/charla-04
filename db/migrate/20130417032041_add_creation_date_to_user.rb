class AddCreationDateToUser < ActiveRecord::Migration
  def change
    add_column :users, :creation_date, :datetime
  end
end
