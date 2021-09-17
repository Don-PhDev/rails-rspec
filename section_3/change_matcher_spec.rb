RSpec.describe 'change matcher' do
<<<<<<< HEAD
  subject { [5, 10, 15] }

  it 'checks that a method changes object state' do
    expect { subject.push(20) }.to change { subject.count }.by 1
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.count }.by -1
  end

  it 'has not changed' do
    expect { subject.count }.to change { subject.count }.by 0
=======
  subject(:num) { [5, 10, 15] }

  it 'checks that a method changes object state' do
    expect { num.push(20) }.to change { subject.count }.by 1
  end

  it 'accepts negative arguments' do
    expect { num.pop }.to change { subject.count }.by -1
  end

  it 'has not changed' do
    expect { num.count }.to change { subject.count }.by 0
>>>>>>> 713da3a8f4b83acdcb7ddd28501d12e7178c86f2
  end
end
