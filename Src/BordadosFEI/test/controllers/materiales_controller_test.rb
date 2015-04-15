require 'test_helper'

class MaterialesControllerTest < ActionController::TestCase
  setup do
    @material = materiales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { Descripcion: @material.Descripcion, Nombre: @material.Nombre, cantidad: @material.cantidad }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    patch :update, id: @material, material: { Descripcion: @material.Descripcion, Nombre: @material.Nombre, cantidad: @material.cantidad }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materiales_path
  end
end
