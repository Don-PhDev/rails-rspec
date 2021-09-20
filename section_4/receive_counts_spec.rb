class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep 3
    true
  end

  def act
    "I will find you and I will kill you"
  end

  def fall_off_ladder
    "No way!, Call my agent!"
  end

  def explosions
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.explosions
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Bond",
                          ready?: true,
                          act: "Any string",
                          fall_off_ladder: "Let's do it",
                          explosions: true
                         ) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting_method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:explosions).once
      # expect(stuntman).to receive(:explosions).exactly(1).times
      # expect(stuntman).to receive(:explosions).at_most(1).times
      expect(stuntman).to receive(:explosions).at_least(1).times

      # expect(stuntman).to receive(:act).twice
      # expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_most(2).times
      subject.start_shooting
    end
  end
end
