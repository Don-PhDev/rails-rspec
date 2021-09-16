RSpec.describe Array do
  subject(:sally) { [2, 3] }

  it 'has the length of the array' do
    expect(sally.length).to eq 2
    sally.pop
    expect(sally.length).to eq 1
  end

  it 'has the length of the original array' do
    expect(sally.length).to eq 2
  end
end
