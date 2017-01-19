module ControllerHelpers
  def login_employee
    @request.env['devise.mapping'] = Devise.mappings[:employee]
    sign_in FactoryGirl.create(:employee)
  end

  def login_customer
    @request.env['devise.mapping'] = Devise.mappings[:customer]
    sign_in FactoryGirl.create(:customer)
  end
end
