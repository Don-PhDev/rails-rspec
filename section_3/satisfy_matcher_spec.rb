RSpec.describe 'satisfy matcher' do
  let(:racecar) { "racecar" }
  let(:madam) { "madam" }
  let(:don) { "Don" }
  let(:hope) { "be a palindrome" }

  it 'is a palindrome' do
    expect(racecar).to satisfy(hope) do |x|
      x == x.reverse
    end

    expect(madam).to satisfy(hope) do |y|
      y == y.reverse
    end
  end

  it 'is not a palindrome' do
    expect(don).not_to satisfy(hope) do |z|
      z == z.reverse
    end
  end
end
