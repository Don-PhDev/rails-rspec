RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(2 * 3 + 2 - 5).to eq(3)
  end

  it 'is just another random example' do
    expect(2 * 3 + 2 - 2).to eq(6)
  end
end
