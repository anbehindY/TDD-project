require_relative '../solver'

describe Solver do
  context 'when given a postive number or zero #factorial' do
    it 'should return factorial of the given number' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(0)).to eq(1)
    end
  end

  context 'when given a negative number #factorial' do
    it 'should raise an error'do
      solver = Solver.new
      expect{solver.factorial(-1)}.to raise_error("Negative number")
    end
  end
end
