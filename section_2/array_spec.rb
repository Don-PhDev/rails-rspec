RSpec.describe Array do
  # implicit subject spec
  # let(:subject) { Array.new }

  it 'should start off empty' do
    expect(subject.length).to eq 0
    subject.push("Anything")
    expect(subject.count).to eq 1
  end
end
