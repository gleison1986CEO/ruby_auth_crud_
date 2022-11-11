require "test_helper"

class TabelasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabela = tabelas(:one)
  end

  test "should get index" do
    get tabelas_url
    assert_response :success
  end

  test "should get new" do
    get new_tabela_url
    assert_response :success
  end

  test "should create tabela" do
    assert_difference("Tabela.count") do
      post tabelas_url, params: { tabela: { email: @tabela.email, nome: @tabela.nome, whatsapp: @tabela.whatsapp } }
    end

    assert_redirected_to tabela_url(Tabela.last)
  end

  test "should show tabela" do
    get tabela_url(@tabela)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabela_url(@tabela)
    assert_response :success
  end

  test "should update tabela" do
    patch tabela_url(@tabela), params: { tabela: { email: @tabela.email, nome: @tabela.nome, whatsapp: @tabela.whatsapp } }
    assert_redirected_to tabela_url(@tabela)
  end

  test "should destroy tabela" do
    assert_difference("Tabela.count", -1) do
      delete tabela_url(@tabela)
    end

    assert_redirected_to tabelas_url
  end
end
