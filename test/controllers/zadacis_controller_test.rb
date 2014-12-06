require 'test_helper'

class ZadacisControllerTest < ActionController::TestCase
  setup do
    @zadaci = zadacis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zadacis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zadaci" do
    assert_difference('Zadaci.count') do
      post :create, zadaci: { oblast: @zadaci.oblast, opis: @zadaci.opis, razred: @zadaci.razred, zadatak: @zadaci.zadatak }
    end

    assert_redirected_to zadaci_path(assigns(:zadaci))
  end

  test "should show zadaci" do
    get :show, id: @zadaci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zadaci
    assert_response :success
  end

  test "should update zadaci" do
    patch :update, id: @zadaci, zadaci: { oblast: @zadaci.oblast, opis: @zadaci.opis, razred: @zadaci.razred, zadatak: @zadaci.zadatak }
    assert_redirected_to zadaci_path(assigns(:zadaci))
  end

  test "should destroy zadaci" do
    assert_difference('Zadaci.count', -1) do
      delete :destroy, id: @zadaci
    end

    assert_redirected_to zadacis_path
  end
end
