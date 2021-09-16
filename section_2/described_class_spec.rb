class Empire
  attr_reader :name, :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
  end
end

RSpec.describe Empire do
  subject { described_class.new("Don", "Emperor") }
  # let(:emperor) { described_class.new("Don", "Emperor") }
  let(:king) { described_class.new("Forrest", "King") }

  it 'returns all members of the imperial family' do
    expect(subject.name).to eq("Don")
    expect(king.name).to eq("Forrest")
  end

  it 'returns the ranks' do
    expect(subject.rank).to eq("Emperor")
    expect(king.rank).to eq("King")
  end

end
