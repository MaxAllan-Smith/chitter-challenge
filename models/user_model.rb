class UserModel
  attr_accessor :id, :username, :password, :first_name, :last_name, :email_address, :date_created

  def initialize(username, password, email_address, date_created)
    @username = username
    @password = password
    @email_address = email_address
    @date_created = date_created
  end
end
