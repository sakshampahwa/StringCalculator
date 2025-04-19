class StringCalculatorTdd
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/\s|,/).map(&:to_i).sum
  end
end
