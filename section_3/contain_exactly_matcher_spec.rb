RSpec.describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  it { is_expected.to contain_exactly(3, 1, 2) }
  it { is_expected.to contain_exactly(2, 3, 1) }
  it { is_expected.to contain_exactly(1, 2, 3) }

  it { is_expected.to contain_exactly(3.0, 1, 2) }
  it { is_expected.to contain_exactly(2.0, 3, 1) }
  it { is_expected.to contain_exactly(1.0, 2, 3) }
end
