weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday"]

# weekdays.each { |d| puts d.capitalize }

class Array
  def each
    i = 0
    while i < self.size
      yield self[i]
      i +=1
    end
    self
  end
end


puts weekdays.each { |day| puts day }.map {|day| day.upcase}
