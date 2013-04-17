class Task < ActiveRecord::Base
  attr_accessible :name, :due_date, :description, :state

  belongs_to :user
end
