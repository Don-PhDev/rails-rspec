RSpec.shared_context 'anything' do
  before do
    @cars = []
  end

  def helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'anything'

  it 'can use outside instance variable' do
    expect(@cars.length).to eq 0
    @cars << 'Audi 8'
    expect(@cars.length).to eq 1
  end

  it 'can reuse instance variables across different examples' do
    expect(@cars.length). to eq 0
  end

  it 'can use shared helper method' do
    expect(helper_method).to eq 5
  end
end

RSpec.describe 'second example in different file' do
  include_context 'anything'

  it 'can use shared let variables' do
    expect(some_variable).to eq [1, 2, 3]
  end
end

RSpec.describe Array do
  subject{ [1, 2] }

  it 'should return the subject value' do
    expect(subject).to eq [1,2]
  end

  it { is_expected.to eq [1,2] }
end
