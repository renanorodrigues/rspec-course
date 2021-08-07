RSpec.describe Array do
  subject(:sally) { [1, 2] }

  it 'after pop the subject has one length' do
    subject.pop
    expect(subject.length).to eq 1   
  end

  it 'is the same to alias' do
    expect(sally).to eq([1, 2])
  end
end
