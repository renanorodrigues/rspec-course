RSpec.describe 'Database' do
  let(:db) {  double('Database Connection', connect: true, disconnect: 'Goodbye') }

  it 'connect success' do
    expect(db.connect).to be_truthy
  end
  
  it 'disconnect success' do
    expect(db.disconnect).to eq 'Goodbye'
  end
end

RSpec.describe 'File System' do    
  it 'when call methods' do
    fs = double('Database Connection')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    
    expect(fs.read).to eq 'Romeo and Juliet'
    expect(fs.write).to be_falsey
  end
end