class AddStateAndDueDateToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :state, :string
    add_column :tasks, :due_date, :datetime
  end
end
