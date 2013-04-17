class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :creation_date, :userName

  has_many :tasks

  validates_presence_of :first_name, :userName
  validates_presence_of :last_name, :if => :first_name? , :on => :create
  validates_uniqueness_of :userName
end
