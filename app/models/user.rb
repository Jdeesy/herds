class User < ActiveRecord::Base
  include BCrypt

  has_many :users_herds, class_name: "UsersHerd"
  has_many :herds, through: :users_herds
  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id
  has_many :recieved_messages, class_name: "Message", foreign_key: :reciever_id

  validates :username, :presence => true,
                       :uniqueness => true
  validates :email,    :presence => true,
                       :uniqueness => true,
                       :format => { :with => /\w+@\w+\.\w+/ }
  validates :password, :presence => true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(user_input)
    if user_input.length >= 8
      @password = BCrypt::Password.create(user_input)
      self.password_hash = @password
    else
      self.errors[:password] << "Must be greater than or equal to 8 characters"
    end
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    return user if user && user.password == password
    nil
  end
end
