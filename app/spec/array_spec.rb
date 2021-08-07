RSpec.describe Array do
  it 'has length zero' do
    expect(subject.length).to eq 0  
  end

  it 'has length one after push element' do
    subject.push(1)
    expect(subject.length).to eq 1
  end
end
