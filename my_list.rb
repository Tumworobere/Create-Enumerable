require_relative './my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    i = @list.length
    while i >= 0
      puts @list[i]
      i -= 1
    end
  end
end
list = MyList.new(1, 2, 3, 4)
list.each
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
