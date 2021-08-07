class Company
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe Company do
  context 'when has create with CPF' do
    subject { described_class.new(:cpf) }

    it 'expects to be CPF' do
      expect(subject.type).to eq :cpf
    end
  end

  context 'when has create with CNPJ' do
    subject { described_class.new(:cnpj) }

    it 'expects to be CNPJ' do
      expect(subject.type).to eq :cnpj
    end
  end
end
