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
  end
end
