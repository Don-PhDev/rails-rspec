RSpec.describe 'test doubles' do
  context 'one-linear syntax' do
    it 'only allows defined methods to be invoked' do
      stuntman = double("Mr. Bond", fall_off_ladder: "Ouch", explosions: true)

      expect(stuntman.fall_off_ladder).to eq "Ouch"
      expect(stuntman.explosions).to eq true
    end
  end

  context "with 'allow', 'receive', and 'return' method" do
    it 'can give only one symbol as an argument' do
      stuntman = double("Mr. Bond")

      allow(stuntman).to receive(:fall_off_ladder).and_return "Ouch"
      expect(stuntman.fall_off_ladder).to eq "Ouch"
    end
  end

  context "with 'receive_messages' method" do
    it 'can give more than one symbol as an argument' do
      stuntman = double("Mr. Bond")
      allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", explosions: true)
      expect(stuntman.fall_off_ladder).to eq "Ouch"
      expect(stuntman.explosions).to eq true
    end
  end
end
