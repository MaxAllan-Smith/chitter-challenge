class PeepManager
  def initialize
    @peeps = []
  end

  def add_new_peep(peep)
    return @peeps << peep
  end

  def all_peeps
    return @peeps
  end

  def all_peeps_reversed
    return @peeps.reverse
  end

  def get_peep_title_by_time(time)
    @peeps.each do |peep|
      if peep.time_created == time
        return peep.title
      end
    end
  end
end
