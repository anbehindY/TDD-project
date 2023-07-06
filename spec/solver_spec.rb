require_relative '../solver'

describe Solver do
  describe '#factorial' do
    context 'when given a postive number or zero' do
      it 'should return factorial of the given number' do
        solver = Solver.new
        expect(solver.factorial(5)).to eq(120)
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when given a negative number ' do
      it 'should raise an error'do
        solver = Solver.new
        expect{solver.factorial(-1)}.to raise_error("Negative number")
      end
    end
  end

  describe '#reverse' do
    context 'when a string is given' do
      it 'should return the reversed string' do
        solver = Solver.new
        reversed_string = solver.reverse('hello')
        expect(reversed_string.to eq('olleh'))
      end
    end
  end
end
