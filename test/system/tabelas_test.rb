require "application_system_test_case"

class TabelasTest < ApplicationSystemTestCase
  setup do
    @tabela = tabelas(:one)
  end

  test "visiting the index" do
    visit tabelas_url
    assert_selector "h1", text: "Tabelas"
  end

  test "should create tabela" do
    visit tabelas_url
    click_on "New tabela"

    fill_in "Email", with: @tabela.email
    fill_in "Nome", with: @tabela.nome
    fill_in "Whatsapp", with: @tabela.whatsapp
    click_on "Create Tabela"

    assert_text "Tabela was successfully created"
    click_on "Back"
  end

  test "should update Tabela" do
    visit tabela_url(@tabela)
    click_on "Edit this tabela", match: :first

    fill_in "Email", with: @tabela.email
    fill_in "Nome", with: @tabela.nome
    fill_in "Whatsapp", with: @tabela.whatsapp
    click_on "Update Tabela"

    assert_text "Tabela was successfully updated"
    click_on "Back"
  end

  test "should destroy Tabela" do
    visit tabela_url(@tabela)
    click_on "Destroy this tabela", match: :first

    assert_text "Tabela was successfully destroyed"
  end
end
