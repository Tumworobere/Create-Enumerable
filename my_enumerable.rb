module MyEnumerable
  def all?
    @list.each do |val|
      return true unless block_given?

      block_test = yield(val)
      return false unless block_test
    end
    true
  end

  def any?
    @list.each do |val|
      return true unless block_given?

      block_test = yield(val)
      return true if block_test
    end
    false
  end

  def filter
    return @list unless block_given?
    return @list if @list.length.zero?

    result = []
    @list.each do |val|
      block_test = yield(val)
      result.push(val) if block_test
    end
    result
  end
end
