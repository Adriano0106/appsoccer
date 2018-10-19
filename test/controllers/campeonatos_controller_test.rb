require 'test_helper'

class CampeonatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campeonato = campeonatos(:one)
  end

  test "should get index" do
    get campeonatos_url
    assert_response :success
  end

  test "should get new" do
    get new_campeonato_url
    assert_response :success
  end

  test "should create campeonato" do
    assert_difference('Campeonato.count') do
      post campeonatos_url, params: { campeonato: { description: @campeonato.description, name: @campeonato.name } }
    end

    assert_redirected_to campeonato_url(Campeonato.last)
  end

  test "should show campeonato" do
    get campeonato_url(@campeonato)
    assert_response :success
  end

  test "should get edit" do
    get edit_campeonato_url(@campeonato)
    assert_response :success
  end

  test "should update campeonato" do
    patch campeonato_url(@campeonato), params: { campeonato: { description: @campeonato.description, name: @campeonato.name } }
    assert_redirected_to campeonato_url(@campeonato)
  end

  test "should destroy campeonato" do
    assert_difference('Campeonato.count', -1) do
      delete campeonato_url(@campeonato)
    end

    assert_redirected_to campeonatos_url
  end
end
