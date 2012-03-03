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

describe CartaServicosCidadaosController do

  # This should return the minimal set of attributes required to create a valid
  # CartaServicosCidadao. As you add validations to CartaServicosCidadao, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CartaServicosCidadaosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all carta_servicos_cidadaos as @carta_servicos_cidadaos" do
      carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
      get :index, {}, valid_session
      assigns(:carta_servicos_cidadaos).should eq([carta_servicos_cidadao])
    end
  end

  describe "GET show" do
    it "assigns the requested carta_servicos_cidadao as @carta_servicos_cidadao" do
      carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
      get :show, {:id => carta_servicos_cidadao.to_param}, valid_session
      assigns(:carta_servicos_cidadao).should eq(carta_servicos_cidadao)
    end
  end

  describe "GET new" do
    it "assigns a new carta_servicos_cidadao as @carta_servicos_cidadao" do
      get :new, {}, valid_session
      assigns(:carta_servicos_cidadao).should be_a_new(CartaServicosCidadao)
    end
  end

  describe "GET edit" do
    it "assigns the requested carta_servicos_cidadao as @carta_servicos_cidadao" do
      carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
      get :edit, {:id => carta_servicos_cidadao.to_param}, valid_session
      assigns(:carta_servicos_cidadao).should eq(carta_servicos_cidadao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CartaServicosCidadao" do
        expect {
          post :create, {:carta_servicos_cidadao => valid_attributes}, valid_session
        }.to change(CartaServicosCidadao, :count).by(1)
      end

      it "assigns a newly created carta_servicos_cidadao as @carta_servicos_cidadao" do
        post :create, {:carta_servicos_cidadao => valid_attributes}, valid_session
        assigns(:carta_servicos_cidadao).should be_a(CartaServicosCidadao)
        assigns(:carta_servicos_cidadao).should be_persisted
      end

      it "redirects to the created carta_servicos_cidadao" do
        post :create, {:carta_servicos_cidadao => valid_attributes}, valid_session
        response.should redirect_to(CartaServicosCidadao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved carta_servicos_cidadao as @carta_servicos_cidadao" do
        # Trigger the behavior that occurs when invalid params are submitted
        CartaServicosCidadao.any_instance.stub(:save).and_return(false)
        post :create, {:carta_servicos_cidadao => {}}, valid_session
        assigns(:carta_servicos_cidadao).should be_a_new(CartaServicosCidadao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CartaServicosCidadao.any_instance.stub(:save).and_return(false)
        post :create, {:carta_servicos_cidadao => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested carta_servicos_cidadao" do
        carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
        # Assuming there are no other carta_servicos_cidadaos in the database, this
        # specifies that the CartaServicosCidadao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CartaServicosCidadao.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => carta_servicos_cidadao.to_param, :carta_servicos_cidadao => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested carta_servicos_cidadao as @carta_servicos_cidadao" do
        carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
        put :update, {:id => carta_servicos_cidadao.to_param, :carta_servicos_cidadao => valid_attributes}, valid_session
        assigns(:carta_servicos_cidadao).should eq(carta_servicos_cidadao)
      end

      it "redirects to the carta_servicos_cidadao" do
        carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
        put :update, {:id => carta_servicos_cidadao.to_param, :carta_servicos_cidadao => valid_attributes}, valid_session
        response.should redirect_to(carta_servicos_cidadao)
      end
    end

    describe "with invalid params" do
      it "assigns the carta_servicos_cidadao as @carta_servicos_cidadao" do
        carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CartaServicosCidadao.any_instance.stub(:save).and_return(false)
        put :update, {:id => carta_servicos_cidadao.to_param, :carta_servicos_cidadao => {}}, valid_session
        assigns(:carta_servicos_cidadao).should eq(carta_servicos_cidadao)
      end

      it "re-renders the 'edit' template" do
        carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CartaServicosCidadao.any_instance.stub(:save).and_return(false)
        put :update, {:id => carta_servicos_cidadao.to_param, :carta_servicos_cidadao => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested carta_servicos_cidadao" do
      carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
      expect {
        delete :destroy, {:id => carta_servicos_cidadao.to_param}, valid_session
      }.to change(CartaServicosCidadao, :count).by(-1)
    end

    it "redirects to the carta_servicos_cidadaos list" do
      carta_servicos_cidadao = CartaServicosCidadao.create! valid_attributes
      delete :destroy, {:id => carta_servicos_cidadao.to_param}, valid_session
      response.should redirect_to(carta_servicos_cidadaos_url)
    end
  end

end
