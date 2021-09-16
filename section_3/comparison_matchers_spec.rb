RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(7.5).to be == 7.5
    expect(10).to be <= 10
    expect(10).to be >= 10
  end

  describe 20 do
    it { is_expected.to be >= 20 }
    it { is_expected.to be <= 20 }
    it { is_expected.to be == 20 }
    it { is_expected.to be == 20.0 }

    it { is_expected.not_to be == 20.01 }
    it { is_expected.not_to be == 21 }
    it { is_expected.not_to be > 20 }
    it { is_expected.not_to be < 20 }

    it { is_expected.not_to be <= 19 }
    it { is_expected.not_to be >= 21 }
  end
end
