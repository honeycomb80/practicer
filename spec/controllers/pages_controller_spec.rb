require 'spec_helper'

describe PagesController do

  describe "GET 'splash'" do
    it "returns http success" do
      get 'splash'
      response.should be_success
    end
  end

end
