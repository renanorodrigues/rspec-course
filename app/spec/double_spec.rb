RSpec.describe 'Test Double exercise' do
  subject { double('Math', double_two: 4, square_root_nine: 3) }

  it 'return the result of 2 x 2' do
    expect(subject.double_two).to eq 4 
  end

  it 'return the result of square 9' do
    expect(subject.square_root_nine).to eq 3
  end
end