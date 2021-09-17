RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([1, 3, 5, 7, 9]).to all be_odd
    expect([2, 4, 6, 8, 10]).to all be_even
    expect([[], [], []]).to all be_empty
    expect([0, 0.0, 0.00]).to all be_zero

    expect([1, 3, 5, 7, 9]).to all be < 10
    expect([2, 4, 6, 8, 10]).to all be <= 10
  end

  describe [10, 20, 30] do
    it { is_expected.to all be_even }
    it { is_expected.to all be >= 10 }
  end
end
