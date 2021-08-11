RSpec.describe 'Testing spies' do
  it "when call any method" do
    game = spy('Game')
    game.start
    expect(game).to have_received(:start)
  end

  it "when call other method" do
    game = spy('Game')
    game.finish
    expect(game).to have_received(:finish)
  end
end