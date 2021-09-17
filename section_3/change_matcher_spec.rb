RSpec.describe 'change matcher' do
  subject { [5, 10, 15] }

  it 'checks that a method changes object state' do
    expect { subject.push(20) }.to change { subject.count }.by 1
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.count }.by -1
  end

  it 'has not changed' do
    expect { subject.count }.to change { subject.count }.by 0
  end
end
