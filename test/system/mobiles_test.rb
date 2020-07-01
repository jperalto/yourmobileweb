require "application_system_test_case"

class MobilesTest < ApplicationSystemTestCase
  setup do
    @mobile = mobiles(:one)
  end

  test "visiting the index" do
    visit mobiles_url
    assert_selector "h1", text: "Mobiles"
  end

  test "creating a Mobile" do
    visit mobiles_url
    click_on "New Mobile"

    fill_in "Imagen", with: @mobile.imagen
    fill_in "Marca", with: @mobile.marca_id
    fill_in "Modelo", with: @mobile.modelo_id
    fill_in "Precio", with: @mobile.precio
    fill_in "Stock", with: @mobile.stock
    click_on "Create Mobile"

    assert_text "Mobile was successfully created"
    click_on "Back"
  end

  test "updating a Mobile" do
    visit mobiles_url
    click_on "Edit", match: :first

    fill_in "Imagen", with: @mobile.imagen
    fill_in "Marca", with: @mobile.marca_id
    fill_in "Modelo", with: @mobile.modelo_id
    fill_in "Precio", with: @mobile.precio
    fill_in "Stock", with: @mobile.stock
    click_on "Update Mobile"

    assert_text "Mobile was successfully updated"
    click_on "Back"
  end

  test "destroying a Mobile" do
    visit mobiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mobile was successfully destroyed"
  end
end
