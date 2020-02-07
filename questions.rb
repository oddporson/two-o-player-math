class Questions

  def self.randomNum1
    @randomNum1 = 1 + rand(10)
  end

  def self.randomNum2
    @randomNum2 = 1 + rand(10)
  end

  def self.check(input)
    input.to_i == (@randomNum1 + @randomNum2)
  end

end
