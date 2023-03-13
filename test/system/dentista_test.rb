require "application_system_test_case"

class DentistaTest < ApplicationSystemTestCase
  setup do
    @dentistum = dentista(:one)
  end

  test "visiting the index" do
    visit dentista_url
    assert_selector "h1", text: "Dentista"
  end

  test "should create dentistum" do
    visit dentista_url
    click_on "New dentistum"

    fill_in "Dia semana", with: @dentistum.dia_semana
    fill_in "Endereco", with: @dentistum.endereco
    fill_in "Especialidade", with: @dentistum.especialidade
    fill_in "Horario fim", with: @dentistum.horario_fim
    fill_in "Horario inicio", with: @dentistum.horario_inicio
    fill_in "Nome", with: @dentistum.nome
    fill_in "Telefone", with: @dentistum.telefone
    click_on "Create Dentistum"

    assert_text "Dentistum was successfully created"
    click_on "Back"
  end

  test "should update Dentistum" do
    visit dentistum_url(@dentistum)
    click_on "Edit this dentistum", match: :first

    fill_in "Dia semana", with: @dentistum.dia_semana
    fill_in "Endereco", with: @dentistum.endereco
    fill_in "Especialidade", with: @dentistum.especialidade
    fill_in "Horario fim", with: @dentistum.horario_fim
    fill_in "Horario inicio", with: @dentistum.horario_inicio
    fill_in "Nome", with: @dentistum.nome
    fill_in "Telefone", with: @dentistum.telefone
    click_on "Update Dentistum"

    assert_text "Dentistum was successfully updated"
    click_on "Back"
  end

  test "should destroy Dentistum" do
    visit dentistum_url(@dentistum)
    click_on "Destroy this dentistum", match: :first

    assert_text "Dentistum was successfully destroyed"
  end
end
