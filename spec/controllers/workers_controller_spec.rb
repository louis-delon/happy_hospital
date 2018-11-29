require 'rails_helper'

RSpec.describe WorkersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end


# RSpec.describe "Widget management", :type => :request do

#   it "creates a Widget and redirects to the Widget's page" do
#     get "/widgets/new"
#     expect(response).to have_http_status(:ok)

#     post "/widgets", :params => { :widget => {:name => "My Widget"} }
#     expect(response).to have_http_status(302)

#     follow_redirect!

#     expect(response).to have_http_status(:success)
#   end

# end
