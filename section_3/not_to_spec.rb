RSpec.describe 'not_to method' do
  before :context do
    puts "it checks for the inverse of a matcher"
  end

  describe 'all built-in matchers' do

    context 'when with arguments' do
      it 'should not be empty' do
        expect([1, 2, 3]).not_to be_empty
        expect({ x: 1, y: 2, z: 3 }).not_to be_empty
        expect("Ako to si Don").not_to be_empty
      end
    end

    context 'when equality matchers' do
      it 'uses either eq, eql, or equal matcher' do
        expect(5).not_to eq 6
        expect(5).not_to eql 5.0
        expect([5, 10, 15]).not_to equal [5, 10, 15]
      end
    end

    context 'when predicate matchers' do
      it "checks if it's either true or false" do
        expect(5).not_to be_even
        expect(10).not_to be_odd
      end
    end

    context 'when be matchers' do
      it 'checks whether the object is truthy or falsy' do
        expect(true).not_to be_falsy
      end
    end

    context 'when start and end_with matchers' do
      it 'checks the presence of a substring either at the beginning or the conclusion of a word' do
        expect("Philippinedev.com").not_to start_with "p"
        expect("Philippinedev.com").not_to end_with "philippinedev.com"
      end
    end

    context 'when respond_to matcher' do
      it 'checks if object can respond' do
        expect(23).not_to respond_to(:length)
      end
    end

    context 'when include matcher' do
      it 'checks if a value is included' do
        expect([x: 1, b: 2, c: 3]).not_to include :d
      end
    end
    
    context 'when raise_error matcher' do
      it 'verify us if the given expression triggers an error' do
        expect { 10 / 2 }.not_to raise_error
      end
    end
  end
end
