require "application_system_test_case"

class RecepcionistsTest < ApplicationSystemTestCase
  setup do
    @recepcionist = recepcionists(:one)
  end

  test "visiting the index" do
    visit recepcionists_url
    assert_selector "h1", text: "Recepcionists"
  end

  test "should create recepcionist" do
    visit recepcionists_url
    click_on "New recepcionist"

    fill_in "Nome", with: @recepcionist.nome
    click_on "Create Recepcionist"

    assert_text "Recepcionist was successfully created"
    click_on "Back"
  end

  test "should update Recepcionist" do
    visit recepcionist_url(@recepcionist)
    click_on "Edit this recepcionist", match: :first

    fill_in "Nome", with: @recepcionist.nome
    click_on "Update Recepcionist"

    assert_text "Recepcionist was successfully updated"
    click_on "Back"
  end

  test "should destroy Recepcionist" do
    visit recepcionist_url(@recepcionist)
    click_on "Destroy this recepcionist", match: :first

    assert_text "Recepcionist was successfully destroyed"
  end
end
