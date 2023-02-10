require_relative '../models/peep_model'
require_relative '../lib/peep_manager'

describe PeepManager do
  it 'should add a new peep to chitter' do
    manager = PeepManager.new
    new_peep = PeepModel.new('New Peep', 'New Peep Content', '10/02/2023 11:59', '1')

    manager.add_new_peep(new_peep)

    expect(manager.all_peeps).to include(new_peep)
  end

  it 'should return a list of all peeps in reverse order' do
    manager = PeepManager.new
    new_peep1 = PeepModel.new('New Peep1', 'New Peep Content1', '10/02/2023 11:59', '1')
    new_peep2 = PeepModel.new('New Peep2', 'New Peep Content2', '10/02/2023 11:59', '1')

    manager.add_new_peep(new_peep1)
    manager.add_new_peep(new_peep2)

    expect(manager.all_peeps_reversed).to eq([new_peep2, new_peep1])
  end

  it 'should return the time of a single peep for when it was created' do
    manager = PeepManager.new
    new_peep1 = PeepModel.new('New Peep1', 'New Peep Content1', '09/02/2023 10:45', '1')
    new_peep2 = PeepModel.new('New Peep2', 'New Peep Content2', '10/02/2023 11:59', '1')
    new_peep3 = PeepModel.new('New Peep3', 'New Peep Content3', '09/02/2023 11:56', '1')

    manager.add_new_peep(new_peep1)
    manager.add_new_peep(new_peep2)
    manager.add_new_peep(new_peep3)

    expect(manager.get_peep_title_by_time('10/02/2023 11:59')).to eq('New Peep2')
  end
end
