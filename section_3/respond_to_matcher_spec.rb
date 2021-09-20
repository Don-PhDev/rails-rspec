class MilkTea
  def purchase
    "I just purchased #{number} more milk tea beverages"
  end

  def drink
    'Delicious'
  end

  def discard
    'Plop!'
  end
end

RSpec.describe MilkTea do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:purchase, :drink)
  end

  it { is_expected.to respond_to(:purchase, :drink) }
  it { is_expected.to respond_to(:purchase, :drink, :discard) }
end
