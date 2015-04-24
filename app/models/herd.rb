class Herd < ActiveRecord::Base

  has_many :users_herds, class_name: "UsersHerd"
  has_many :users, through: :users_herds

end
