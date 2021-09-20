RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(23)

    expect(calculator.add).to eq 23
  end

  it 'can stub one or more methods on a real object' do
    arr = [2, 4, 6]
    allow(arr).to receive(:sum).and_return(100)

    expect(arr.sum).to eq 100
    arr.push 8
    expect(arr).to eq [2, 4, 6, 8]
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:x, :y, nil)

    expect(mock_array.pop).to eq :x
    expect(mock_array.pop).to eq :y
    expect(mock_array.pop).to be_nil
  end
end
