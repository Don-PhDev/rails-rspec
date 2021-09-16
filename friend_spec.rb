class Friend
  attr_accessor :name, :surname

  def initialize(name, surname)
    @name = name
    @surname = surname
  end
end

RSpec.describe Friend do
  let(:friend) { Friend.new('Don', 'Usbal') }

  it 'has a name' do
    expect(friend.name).to eq('Don')
  end

  it 'has a surname' do
    expect(friend.surname).to eq('Usbal')
  end
end
