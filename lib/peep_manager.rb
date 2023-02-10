class PeepsManager
  def initialize
    @peeps = []
  end

  def add_new_peep(peep)
    @peeps << peep
  end

  def all_peeps
    @peeps
  end
end
