require "test_helper"

class RecepcionistasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recepcionista = recepcionistas(:one)
  end

  test "should get index" do
    get recepcionistas_url
    assert_response :success
  end

  test "should get new" do
    get new_recepcionista_url
    assert_response :success
  end

  test "should create recepcionista" do
    assert_difference("Recepcionista.count") do
      post recepcionistas_url, params: { recepcionista: { cpf: @recepcionista.cpf, email: @recepcionista.email, nome: @recepcionista.nome } }
    end

    assert_redirected_to recepcionista_url(Recepcionista.last)
  end

  test "should show recepcionista" do
    get recepcionista_url(@recepcionista)
    assert_response :success
  end

  test "should get edit" do
    get edit_recepcionista_url(@recepcionista)
    assert_response :success
  end

  test "should update recepcionista" do
    patch recepcionista_url(@recepcionista), params: { recepcionista: { cpf: @recepcionista.cpf, email: @recepcionista.email, nome: @recepcionista.nome } }
    assert_redirected_to recepcionista_url(@recepcionista)
  end

  test "should destroy recepcionista" do
    assert_difference("Recepcionista.count", -1) do
      delete recepcionista_url(@recepcionista)
    end

    assert_redirected_to recepcionistas_url
  end
end
