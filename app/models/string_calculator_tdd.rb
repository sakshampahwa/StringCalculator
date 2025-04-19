class StringCalculatorTdd
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end

    negatives = numbers.split(/#{delimiter}|\s/).map(&:to_i).select { |num| num.negative? }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    numbers.split(/#{delimiter}|\s/).map(&:to_i).sum
  end
end
