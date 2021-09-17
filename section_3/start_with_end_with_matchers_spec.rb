RSpec.describe 'start and end with matchers' do
  describe 'Don' do

    it { is_expected.to start_with "D" }
    it { is_expected.to end_with "n" }
  end

  describe [:D, :o, :n] do
    it { is_expected.to start_with :D }
    it { is_expected.to end_with :n }
  end
end
