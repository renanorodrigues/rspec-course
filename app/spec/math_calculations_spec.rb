RSpec.describe 'Math Calculations' do
  it 'does basic math' do
    expect(1 + 2).to eq(3)
    expect(5 ** 5).to eq(3125)
    expect(60 / 2).to eq(30)
    expect(120 - 40).to eq(80)
  end
end
