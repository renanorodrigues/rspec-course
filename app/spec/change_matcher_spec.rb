RSpec.describe 'Test using change matcher' do
  subject { %w(1 2 3) }

  it 'expected to increase by one after push' do
    expect { subject << 3 }.to change { subject.length }.by(1)
  end

  it 'expected to decrease by one after push' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
