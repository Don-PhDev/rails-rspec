# include matcher

RSpec.describe 'include matcher' do
  describe 'Emperor Don hehe' do
    it { is_expected.to include("Empe") }
    it { is_expected.to include("Don") }
    it { is_expected.to include("he") }
  end

  describe [10, 20, 30] do
    it { is_expected.to include 10 }
    it { is_expected.to include 20 }
    it { is_expected.to include 30 }
  end

  describe ({ a: 2, b:4, c:6 }) do
    it { is_expected.to include :a}
    it { is_expected.to include :c}
    it { is_expected.to include :b}

    it { is_expected.to include(a: 2) }
  end
end
