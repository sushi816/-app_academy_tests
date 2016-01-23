class Array
  def sum
    if self.empty?
      0
    else
      self.inject(0) { |sum, obj| sum + obj }
    end
  end

  def square
    if self.empty?
      []
    else
      self.map { |num| num * num }
    end
  end

  def square!
    self.map! { |num| num * num }
  end
end