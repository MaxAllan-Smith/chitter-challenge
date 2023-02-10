class UserManager
  def initialize
    @users = []
  end

  def add_new_user(user)
    return @users << user
  end

  def all_users
    return @users
  end
end
