class River
  #attr_accessor :fishies

  def initialize(fishies)
    @fishies = fishies
  end

  def count_fish
    return @fishies.length
  end

  def get_fish
    @fishies.pop()
  end

end