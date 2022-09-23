require "application_system_test_case"

class RecepcionistasTest < ApplicationSystemTestCase
  setup do
    @recepcionista = recepcionistas(:one)
  end

  test "visiting the index" do
    visit recepcionistas_url
    assert_selector "h1", text: "Recepcionistas"
  end

  test "should create recepcionista" do
    visit recepcionistas_url
    click_on "New recepcionista"

    fill_in "Cpf", with: @recepcionista.cpf
    fill_in "Email", with: @recepcionista.email
    fill_in "Nome", with: @recepcionista.nome
    click_on "Create Recepcionista"

    assert_text "Recepcionista was successfully created"
    click_on "Back"
  end

  test "should update Recepcionista" do
    visit recepcionista_url(@recepcionista)
    click_on "Edit this recepcionista", match: :first

    fill_in "Cpf", with: @recepcionista.cpf
    fill_in "Email", with: @recepcionista.email
    fill_in "Nome", with: @recepcionista.nome
    click_on "Update Recepcionista"

    assert_text "Recepcionista was successfully updated"
    click_on "Back"
  end

  test "should destroy Recepcionista" do
    visit recepcionista_url(@recepcionista)
    click_on "Destroy this recepcionista", match: :first

    assert_text "Recepcionista was successfully destroyed"
  end
end
