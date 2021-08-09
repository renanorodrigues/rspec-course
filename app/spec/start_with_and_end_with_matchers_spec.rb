RSpec.describe 'Some examples with start and end matchers' do

  it { is_expected.to start_with('Some') }
  it { is_expected.to end_with('matchers') }
end
