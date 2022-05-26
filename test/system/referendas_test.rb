require "application_system_test_case"

class ReferendasTest < ApplicationSystemTestCase
  setup do
    @referenda = referendas(:one)
  end

  test "visiting the index" do
    visit referendas_url
    assert_selector "h1", text: "Referendas"
  end

  test "should create referenda" do
    visit referendas_url
    click_on "New referenda"

    fill_in "Question", with: @referenda.question
    click_on "Create Referenda"

    assert_text "Referenda was successfully created"
    click_on "Back"
  end

  test "should update Referenda" do
    visit referenda_url(@referenda)
    click_on "Edit this referenda", match: :first

    fill_in "Question", with: @referenda.question
    click_on "Update Referenda"

    assert_text "Referenda was successfully updated"
    click_on "Back"
  end

  test "should destroy Referenda" do
    visit referenda_url(@referenda)
    click_on "Destroy this referenda", match: :first

    assert_text "Referenda was successfully destroyed"
  end
end
