RSpec.describe "Using include matcher" do
  
  it { is_expected.to include("matcher") }

  it 'verify number in range' do
    numbers = [1, 2, 3, 4]
    expect(numbers).to include(be < 10)
    expect(numbers).to include(4, 2)
  end

  it 'verify values in hash' do
    hash = {a: 1, b: 34, c: 'HASH'}
    expect(hash).to include(a: 1)
    expect(hash).to include(a: 1, b: 34)
  end
end
