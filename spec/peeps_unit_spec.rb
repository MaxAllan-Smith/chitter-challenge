require_relative '../models/peep_model'
require_relative '../lib/peep_manager'

describe PeepsManager do
  it 'should add a new peep to chitter' do
    manager = PeepsManager.new
    new_peep = PeepModel.new('New Peep', 'New Peep Content', '10/02/2023 11:59', '1')

    manager.add_new_peep(new_peep)

    expect(manager.all_peeps).to include(new_peep)
  end
end
