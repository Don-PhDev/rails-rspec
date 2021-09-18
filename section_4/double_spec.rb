RSpec.describe 'double spec' do
  it 'only allows defined methods to be invoked' do
    stuntman = double("Mr. Bond", fall_off_ladder: "Ouch", explosions: true)

    expect(stuntman.fall_off_ladder).to eq "Ouch"
    expect(stuntman.explosions).to eq true
  end

  it 'only allows defined methods to be invoked' do
    stuntman = double("Mr. Bond")

    allow(stuntman).to receive(:fall_off_ladder).and_return "Ouch"
    expect(stuntman.fall_off_ladder).to eq "Ouch"
  end

  it 'only allows defined methods to be invoked' do
    stuntman = double("Mr. Bond")
    allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", explosions: true)
    expect(stuntman.fall_off_ladder).to eq "Ouch"
    expect(stuntman.explosions).to eq true
  end
end
