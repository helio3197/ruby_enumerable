module MyEnumerable
  def all?
    result = true
    @list.each do |item|
      result = false unless yield(item)
    end
    result
  end

  def any?
    result = false
    @list.each do |item|
      result = true if yield(item)
    end
    result
  end

  def filter
    result = []
    @list.each do |item|
      result.push(item) if yield(item)
    end
    result
  end
end
