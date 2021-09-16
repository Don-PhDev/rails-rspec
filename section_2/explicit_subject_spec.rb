RSpec.describe Hash do
  subject(:abe) do
    { a: 1, b: 2 }
  end

  subject(:paulo) do
    { x: 3, y: 6, z: 9 }
  end

  subject(:don) { { a: 1, b: 2, c: 3, d: 4, e: 5 } }

  it 'has two key-value pairs' do
    expect(abe.length).to eq 2
  end

  it 'has five key-value pairs' do
    expect(don.length).to eq 5
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(paulo.length).to eq 3
    end
  end
end
