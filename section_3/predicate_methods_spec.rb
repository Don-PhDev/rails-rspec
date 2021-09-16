# predicate matchers are RSpec matchers
# to test Ruby predicate methods

RSpec.describe 'predicate methods and matchers' do
  it 'returns either true or false' do
    expect( 0.zero? ).to be true
    expect( 10.zero? ).to be false

    expect( 2.even? ).to be true
    expect( 200.even? ).not_to be false
    expect( 5.even? ).to be false

    expect( 7.odd? ).to be true
    expect( 14.odd? ).to be false

    expect( [].empty? ).to be true
    expect( [23].empty?  ).to be false
  end

  it 'can be tested with Ruby methods' do
    sum = 13 + 10
    expect(sum.odd?).to eq true
  end

  it 'can be tested with predicate matchers' do
    expect(13 + 10).to be_odd
    expect(8).to be_even
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 10 do
    it { is_expected.to be_even }
    it { is_expected.not_to be_zero }
  end
end
