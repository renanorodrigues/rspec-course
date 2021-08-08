RSpec.describe 'Be Matchers' do
  it "Expects true result" do
    expect('hello').to be_truthy
    expect(0).to be_truthy
    expect(-10).to be_truthy
    expect([]).to be_truthy
    expect(99.99).to be_truthy
    expect(:hello).to be_truthy
    expect(true).to be_truthy
    expect([1, 2, 3]).to be_truthy
  end
  
  it "Expects false result" do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end
end
