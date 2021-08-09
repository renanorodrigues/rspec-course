RSpec.describe 'Using the matcher contain_exactly' do
  it 'expect all information correct in document' do
    params = ['CPF', :valid, 'Rogerio']
    expect(params).to contain_exactly("CPF", :valid, "Rogerio")  
  end

  it 'expect all other information correct in document' do
    params = [:invalid, 'CPF', 'Rogerio']
    expect(params).to contain_exactly(:invalid, 'CPF', 'Rogerio')  
  end
end