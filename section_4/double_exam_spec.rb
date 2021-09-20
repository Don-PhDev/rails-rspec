RSpec.describe 'Database Connection' do
  it 'only allows defined methods to be invoked' do
    db = double("Database Connection", connect: true, disconnect: "Goodbye")
    expect(db.connect).to eq true
    expect(db.disconnect).to eq "Goodbye"
  end
end

RSpec.describe 'Romeo and Juliet' do
  it 'can give only one symbol as an argument' do
    fs = double("File System")
    allow(fs).to receive(:read).and_return "Romeo and Juliet"
    allow(fs).to receive(:write).and_return false 
  end
end
