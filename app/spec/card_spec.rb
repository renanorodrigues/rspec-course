class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe 'Card' do
  let(:card) { Card.new('Ace', 'Suit') }
  
  it 'rank' do
    expect(card.rank).to eq('Ace')  
  end

  it 'suit' do
    expect(card.suit).to eq('Suit')  
  end
end
