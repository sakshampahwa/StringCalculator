require 'rails_helper'

RSpec.describe StringCalculatorTdd, type: :model do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculatorTdd.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      calculator = StringCalculatorTdd.new
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = StringCalculatorTdd.new
      expect(calculator.add('1,5')).to eq(6)
    end

    it 'handles new lines between numbers' do
      calculator = StringCalculatorTdd.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      calculator = StringCalculatorTdd.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'throws an exception for negative numbers' do
      calculator = StringCalculatorTdd.new
      expect { calculator.add("1,-2,3,-4") }.to raise_error(RuntimeError, "negative numbers not allowed -2,-4")
    end
  end
end
