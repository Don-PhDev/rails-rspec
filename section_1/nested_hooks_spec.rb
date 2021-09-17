RSpec.describe 'nested hooks' do
  before (:context) do 
    puts 'Outer before context'
  end

  after (:context) do
    puts 'Outer after context'
  end

  before (:example) do 
    puts 'Outer before example'
  end

  after (:example) do
    puts 'Outer after example'
  end

  it 'does basic math' do
    expect(1 + 3).to eq(4)
  end

  context 'with condition 1' do
    before (:context) do 
      puts 'Inner before context'
    end

    after (:context) do
      puts 'Inner after context'
    end

    before (:example) do 
      puts 'Inner before example'
    end

    after (:example) do
      puts 'Inner after example'
    end

    it 'does basic math' do
      expect(10 + 13).to eq(23)
    end
  end
end
