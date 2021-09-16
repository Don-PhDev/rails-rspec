RSpec.describe 'equality matchers' do
  let(:x) { 1.0 } # float
  let(:y) { 1 }   # integer
  let(:z) { y }   # integer

  describe 'equality' do

    context 'when eq matcher' do
      it 'checks the value and ignores the class' do
        expect(x).to eq 1
        expect(x).to eq y
        expect(y).to eq 1.0
        expect(z).to eq 1
      end
    end

    context 'when eql matcher' do
      it 'checks if the value and class are the same' do
        expect(z).to eql 1
        expect(x).not_to eql 1
        expect(y).not_to eql 1.0
        expect(x).not_to eql y
      end
    end
  end

  describe 'identity' do
    let(:d) { [1, 2, 3] }
    let(:o) { [1, 2, 3] }
    let(:n) { d }
    let(:x) { [2] }
    let(:y) { [2] }
    let(:z) { x }

    context 'when equal matcher' do
      it 'cares about object identity' do
        expect(d).not_to equal o
        expect(o).not_to equal n
        expect(x).not_to equal y
        expect(n).to equal d
        expect(x).to equal z

        expect(n).to eq o
        expect(n).to eq d

        expect(o).to eql d
      end
    end
  end
end
