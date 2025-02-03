# describe method on the RSpec modul that takes an argument
# describing what we are testing -> in this case the class Card's functionality
# describe keyword creates an example group
# example group = group of one or more examples/tests

# don't describe HOW is something built but WHAT it is doing!

RSpec.describe 'Card' do
  it 'has a type' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
    # expecting the card's type to be equal to 'Ace of Spades'
  end
end

# expects the card's type to be 'Ace of Spades'


# expect method with argument -> argument = what rspec will evaluate, test
# equal method creates a matcher -> heart of the expectation, determines what is a success in the test
# this case: argument for equal says what 'expect(card.type)' should be equal to 'Ace of Spades' at the end of the process

# expect(card.type) -> returns an object
# method .to is used on object


