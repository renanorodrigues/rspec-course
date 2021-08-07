RSpec.describe Array do
  subject { [1, 2] }

  it { is_expected.to eq([1, 2]) }

  it 'should be equal do original subject' do
    expect(subject).to eq([1, 2])
  end
end
