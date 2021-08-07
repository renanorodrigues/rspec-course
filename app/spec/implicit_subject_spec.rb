class User
  attr_reader :name, :profile

  def initialize(name = 'User', profile = :admin)
    @name = name
    @profile = profile
  end
end

RSpec.describe User do

  context 'when initialize' do
    it 'Has a default profile' do
      expect(subject.profile).to eq :admin  
    end

    it 'Has a default name' do
      expect(subject.name).to eq 'User'  
    end
  end
end