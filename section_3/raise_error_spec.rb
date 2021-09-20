RSpec.describe 'raise_error matcher' do
  it 'can check for a specific error' do
    expect { kalabaw like huala }.to raise_error NameError
    expect { 1000000 / 0 }.to raise_error ZeroDivisionError
  end
end
