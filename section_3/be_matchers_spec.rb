# THE ONLY VALUES THAT ARE FALSE/FALSY IN RUBY ARE FALSE AND NIL
# EVERYTHING THAT IS NOT FALSE NOR NIL ARE CONSIDERED TRUE/TRUTHY

RSpec.describe 'be matchers' do
  context 'if not nil nor false' do
    it 'returns truthiness' do
      expect(true).to be_truthy
      expect(:huala).to be_truthy
      expect("string").to be_truthy
      expect(1.0).to be_truthy
      expect(1).to be_truthy
      expect([[10], [90]]).to be_truthy
      expect([[], []]).to be_truthy
      expect({}).to be_truthy
    end
  end

  context 'if nil or false' do
    it 'returns falsiness' do
      expect(false).to be_falsy
      expect(nil).to be_falsy
    end
  end

  it 'test for nil' do
    expect(nil).to be_nil

    hash = { x: 10 }
    expect(hash[:y]).to be_nil

    expect(hash[:x]).not_to be_nil
  end
end
