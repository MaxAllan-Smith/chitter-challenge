require_relative '../models/user_model'
require_relative '../lib/user_manager'

describe UserManager do
  it 'should add a new user to chitter' do
    manager = UserManager.new
    new_user = UserModel.new('MS', 'pass1234', 'Maxibon_1195@hotmail.com', '10/02/2023 13:04')

    manager.add_new_user(new_user)

    expect(manager.all_users).to include(new_user)
  end
end
