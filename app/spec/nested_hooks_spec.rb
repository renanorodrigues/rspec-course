class Message
  attr_accessor :text

  def initialize(text = 'Some message')
    @text = text
  end
end

RSpec.describe Message do
  before(:context) { @learning = 'I am learning' }
  before { @object = 'Rspec' }

  it 'expect message return' do
    subject.text = "#{@learning} #{@object}"
    expect(subject.text).to eq('I am learning Rspec')
  end

  context 'with rspec the first word in text' do
    before { @goal = 'is a framework that I will learning' }

    it 'expect other message return' do
      subject.text = "#{@object} #{@goal}"
      expect(subject.text).to eq('Rspec is a framework that I will learning')
    end
  end
end
