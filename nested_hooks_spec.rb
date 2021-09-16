RSpec.describe 'nested hooks' do
  before (:context) do 
    puts 'Outer before context'
  end

  before (:example) do 
    puts 'Outer before example'
  end

  it 'does basic math' do
    expect(1 + 3).to eq(4)
  end

  context 'with condition 1' do
    before (:context) do 
      puts 'Inner before context'
    end

    before (:example) do 
      puts 'Inner before example'
    end

    it 'does basic math' do
      expect(1 + 3).to eq(4)
    end
  end
end
