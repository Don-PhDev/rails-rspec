RSpec.shared_examples 'Ruby class with five items' do
  it 'returns the number of items' do
    expect(subject.length).to eq 5
  end
end

RSpec.describe String do
  subject { ("World") }
  include_examples 'Ruby class with five items'
end

RSpec.describe Array do
  subject { [2, 4, 6, 8, 10] }
  include_examples 'Ruby class with five items'
end

RSpec.describe Hash do
  subject { { w: 1, o: 2, r: 3, l: 4, d: 5 } }
  include_examples 'Ruby class with five items'
end

class TeamBee
  def length
    5
  end
end

RSpec.describe TeamBee do
  subject { described_class.new }
  include_examples 'Ruby class with five items'
end
