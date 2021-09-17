class Contact
  attr_reader :name, :number

  def initialize(name, number)
    @name = name
    @number = number
  end
end

RSpec.describe 'have_attr matcher' do
  describe Contact.new("Don", "092222nog2") do

    it { is_expected.to have_attributes(name: "Don") }
    it { is_expected.to have_attributes(number: "092222nog2") }
  end
end
