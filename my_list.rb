require_relative 'my_enumerable.rb'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end
  

end

list = MyList.new(1, 2, 3, 4)
list.all? {|e| e < 5}