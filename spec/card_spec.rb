# METHOD CODE
# fix first error, instead of all at once -> step by step
# write bare minimum to make a test pass

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


# TEST CODE
# don't describe HOW is something built but WHAT it is doing!

RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end




# INFO
# expect method with argument -> argument = what rspec will evaluate, test
# equal method creates a matcher -> heart of the expectation, determines what is a success in the test
# this case: argument for equal says what 'expect(card.type)' should be equal to 'Ace of Spades' at the end of the process
# expect(card.type) -> returns an object
# method .to is used on object
