class Players
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def wrong_answer
    @life -= 1
  end

  def no_life
    @life == 0
  end

end
