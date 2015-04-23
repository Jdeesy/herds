class UsersHerd < ActiveRecord::Base

  belongs_to :user
  belongs_to :herd

end
