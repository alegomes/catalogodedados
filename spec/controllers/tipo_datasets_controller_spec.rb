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

describe TipoDatasetsController do

  # This should return the minimal set of attributes required to create a valid
  # TipoDataset. As you add validations to TipoDataset, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipoDatasetsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all tipo_datasets as @tipo_datasets" do
      tipo_dataset = TipoDataset.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tipo_datasets).should eq([tipo_dataset])
    end
  end

  describe "GET show" do
    it "assigns the requested tipo_dataset as @tipo_dataset" do
      tipo_dataset = TipoDataset.create! valid_attributes
      get :show, {:id => tipo_dataset.to_param}, valid_session
      assigns(:tipo_dataset).should eq(tipo_dataset)
    end
  end

  describe "GET new" do
    it "assigns a new tipo_dataset as @tipo_dataset" do
      get :new, {}, valid_session
      assigns(:tipo_dataset).should be_a_new(TipoDataset)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipo_dataset as @tipo_dataset" do
      tipo_dataset = TipoDataset.create! valid_attributes
      get :edit, {:id => tipo_dataset.to_param}, valid_session
      assigns(:tipo_dataset).should eq(tipo_dataset)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TipoDataset" do
        expect {
          post :create, {:tipo_dataset => valid_attributes}, valid_session
        }.to change(TipoDataset, :count).by(1)
      end

      it "assigns a newly created tipo_dataset as @tipo_dataset" do
        post :create, {:tipo_dataset => valid_attributes}, valid_session
        assigns(:tipo_dataset).should be_a(TipoDataset)
        assigns(:tipo_dataset).should be_persisted
      end

      it "redirects to the created tipo_dataset" do
        post :create, {:tipo_dataset => valid_attributes}, valid_session
        response.should redirect_to(TipoDataset.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipo_dataset as @tipo_dataset" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoDataset.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_dataset => {}}, valid_session
        assigns(:tipo_dataset).should be_a_new(TipoDataset)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoDataset.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_dataset => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tipo_dataset" do
        tipo_dataset = TipoDataset.create! valid_attributes
        # Assuming there are no other tipo_datasets in the database, this
        # specifies that the TipoDataset created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TipoDataset.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => tipo_dataset.to_param, :tipo_dataset => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested tipo_dataset as @tipo_dataset" do
        tipo_dataset = TipoDataset.create! valid_attributes
        put :update, {:id => tipo_dataset.to_param, :tipo_dataset => valid_attributes}, valid_session
        assigns(:tipo_dataset).should eq(tipo_dataset)
      end

      it "redirects to the tipo_dataset" do
        tipo_dataset = TipoDataset.create! valid_attributes
        put :update, {:id => tipo_dataset.to_param, :tipo_dataset => valid_attributes}, valid_session
        response.should redirect_to(tipo_dataset)
      end
    end

    describe "with invalid params" do
      it "assigns the tipo_dataset as @tipo_dataset" do
        tipo_dataset = TipoDataset.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoDataset.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_dataset.to_param, :tipo_dataset => {}}, valid_session
        assigns(:tipo_dataset).should eq(tipo_dataset)
      end

      it "re-renders the 'edit' template" do
        tipo_dataset = TipoDataset.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoDataset.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_dataset.to_param, :tipo_dataset => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipo_dataset" do
      tipo_dataset = TipoDataset.create! valid_attributes
      expect {
        delete :destroy, {:id => tipo_dataset.to_param}, valid_session
      }.to change(TipoDataset, :count).by(-1)
    end

    it "redirects to the tipo_datasets list" do
      tipo_dataset = TipoDataset.create! valid_attributes
      delete :destroy, {:id => tipo_dataset.to_param}, valid_session
      response.should redirect_to(tipo_datasets_url)
    end
  end

end
