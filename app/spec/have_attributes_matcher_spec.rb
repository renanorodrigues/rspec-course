class Document
  attr_reader :type, :status, :owner

  def initialize(type = nil, status = :waiting, owner = nil)
    @type = type
    @owner = owner
    @status = status
  end
end

RSpec.describe Document do
  context 'when iniatialized without values' do
    it { is_expected.to have_attributes(type: nil, status: :waiting, owner: nil) }
  end

  context 'when iniatialized with values' do
    subject { described_class.new("CPF", :valid, "Roberto") }

    it { is_expected.to have_attributes(type: 'CPF', status: :valid, owner: 'Roberto') }
  end
end
