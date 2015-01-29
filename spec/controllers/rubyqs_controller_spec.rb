require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RubyqsController do

  # This should return the minimal set of attributes required to create a valid
  # Rubyq. As you add validations to Rubyq, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "prompt_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RubyqsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all rubyqs as @rubyqs" do
      rubyq = Rubyq.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rubyqs).should eq([rubyq])
    end
  end

  describe "GET show" do
    it "assigns the requested rubyq as @rubyq" do
      rubyq = Rubyq.create! valid_attributes
      get :show, {:id => rubyq.to_param}, valid_session
      assigns(:rubyq).should eq(rubyq)
    end
  end

  describe "GET new" do
    it "assigns a new rubyq as @rubyq" do
      get :new, {}, valid_session
      assigns(:rubyq).should be_a_new(Rubyq)
    end
  end

  describe "GET edit" do
    it "assigns the requested rubyq as @rubyq" do
      rubyq = Rubyq.create! valid_attributes
      get :edit, {:id => rubyq.to_param}, valid_session
      assigns(:rubyq).should eq(rubyq)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Rubyq" do
        expect {
          post :create, {:rubyq => valid_attributes}, valid_session
        }.to change(Rubyq, :count).by(1)
      end

      it "assigns a newly created rubyq as @rubyq" do
        post :create, {:rubyq => valid_attributes}, valid_session
        assigns(:rubyq).should be_a(Rubyq)
        assigns(:rubyq).should be_persisted
      end

      it "redirects to the created rubyq" do
        post :create, {:rubyq => valid_attributes}, valid_session
        response.should redirect_to(Rubyq.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rubyq as @rubyq" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rubyq.any_instance.stub(:save).and_return(false)
        post :create, {:rubyq => { "prompt_id" => "invalid value" }}, valid_session
        assigns(:rubyq).should be_a_new(Rubyq)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Rubyq.any_instance.stub(:save).and_return(false)
        post :create, {:rubyq => { "prompt_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rubyq" do
        rubyq = Rubyq.create! valid_attributes
        # Assuming there are no other rubyqs in the database, this
        # specifies that the Rubyq created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Rubyq.any_instance.should_receive(:update).with({ "prompt_id" => "1" })
        put :update, {:id => rubyq.to_param, :rubyq => { "prompt_id" => "1" }}, valid_session
      end

      it "assigns the requested rubyq as @rubyq" do
        rubyq = Rubyq.create! valid_attributes
        put :update, {:id => rubyq.to_param, :rubyq => valid_attributes}, valid_session
        assigns(:rubyq).should eq(rubyq)
      end

      it "redirects to the rubyq" do
        rubyq = Rubyq.create! valid_attributes
        put :update, {:id => rubyq.to_param, :rubyq => valid_attributes}, valid_session
        response.should redirect_to(rubyq)
      end
    end

    describe "with invalid params" do
      it "assigns the rubyq as @rubyq" do
        rubyq = Rubyq.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rubyq.any_instance.stub(:save).and_return(false)
        put :update, {:id => rubyq.to_param, :rubyq => { "prompt_id" => "invalid value" }}, valid_session
        assigns(:rubyq).should eq(rubyq)
      end

      it "re-renders the 'edit' template" do
        rubyq = Rubyq.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Rubyq.any_instance.stub(:save).and_return(false)
        put :update, {:id => rubyq.to_param, :rubyq => { "prompt_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rubyq" do
      rubyq = Rubyq.create! valid_attributes
      expect {
        delete :destroy, {:id => rubyq.to_param}, valid_session
      }.to change(Rubyq, :count).by(-1)
    end

    it "redirects to the rubyqs list" do
      rubyq = Rubyq.create! valid_attributes
      delete :destroy, {:id => rubyq.to_param}, valid_session
      response.should redirect_to(rubyqs_url)
    end
  end

end
