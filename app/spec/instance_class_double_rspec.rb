class LoginController
  def login; end

  def self.logout; end
end

RSpec.describe LoginController do
  context 'when user already sign in before' do
    it 'login success' do
      loginController = instance_double(described_class, login: :ok)
      expect(loginController.login).to eq :ok
    end
  end

  context 'when user has not sign in before' do
    it 'login return no_content' do
      loginController = instance_double(described_class, login: :no_content)
      expect(loginController.login).to eq :no_content
    end
  end

  it 'when user logout the system' do
    controller = class_double(described_class, logout: :success)
    expect(controller.logout).to eq :success
  end
end