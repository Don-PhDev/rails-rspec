RSpec.describe 'start and end with matchers' do
  describe 'Don' do

    it { is_expected.to start_with "D" }
    it { is_expected.to end_with "n" }

    it { is_expected.not_to start_with "n" }
    it { is_expected.not_to end_with "D" }
  end

  describe [:U, :s, :b, :a, :l] do
    it { is_expected.to start_with :U, :s}
    it { is_expected.to end_with :a, :l }

    it { is_expected.not_to start_with :l }
    it { is_expected.not_to end_with :U }
  end
end
