RSpec.describe 'compound expectations and matcher' do
  subject { 100 }

  context 'with do-end block' do
    it 'can test for multiple matchers' do
      expect(subject).to be_even.and be > 99
    end
  end

  context 'with one-linear syntax' do
    it { is_expected.to be_even.and be >= 100 }
  end
end

RSpec.describe 'another compound expectations and matcher' do
  subject { "Teambee" }

  context 'with do-end block' do
    it 'supports multiple matchers on a single line' do
      expect(subject).to start_with("T").and end_with("e")
    end
  end

    context 'with one-linear syntax' do
    it { is_expected.to start_with("T").and end_with("ee") }
  end
end

RSpec.describe [:abe, :paulo, :lester] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:paulo).or eq(:lester).or eq(:abe)
  end
end
