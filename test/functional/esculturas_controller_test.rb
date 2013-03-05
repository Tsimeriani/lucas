require 'test_helper'

class EsculturasControllerTest < ActionController::TestCase
  setup do
    @escultura = esculturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:esculturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escultura" do
    assert_difference('Escultura.count') do
      post :create, escultura: @escultura.attributes
    end

    assert_redirected_to escultura_path(assigns(:escultura))
  end

  test "should show escultura" do
    get :show, id: @escultura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @escultura
    assert_response :success
  end

  test "should update escultura" do
    put :update, id: @escultura, escultura: @escultura.attributes
    assert_redirected_to escultura_path(assigns(:escultura))
  end

  test "should destroy escultura" do
    assert_difference('Escultura.count', -1) do
      delete :destroy, id: @escultura
    end

    assert_redirected_to esculturas_path
  end
end
