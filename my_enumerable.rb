module MyEnumerable
  def all?(list = [])
    result = true
    list.each do |item|
      puts item
      if !yield(item)
        result = false;
      end
      puts result
      result
    end
  end
end
