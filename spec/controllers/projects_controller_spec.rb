require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  describe "GET #new" do
    context 'success' do
      it "returns http success" do
        login_customer
        get :new
        expect(response.status).to eq 200
      end
    end

    context 'fail' do
      it 'returns http unauthorized' do
        get :new
        expect(response.status).to eq 403
      end

      it 'returns http unauthorized when someone but not customer tries to access the page' do
        login_employee
        get :new
        expect(response.status).to eq 403
      end
    end
  end
end
