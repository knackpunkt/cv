require 'test_helper'

class AnschreibensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anschreiben = anschreibens(:one)
  end

  test "should get index" do
    get anschreibens_url
    assert_response :success
  end

  test "should get new" do
    get new_anschreiben_url
    assert_response :success
  end

  test "should create anschreiben" do
    assert_difference('Anschreiben.count') do
      post anschreibens_url, params: { anschreiben: { adess: @anschreiben.adess, bewerbung: @anschreiben.bewerbung, city: @anschreiben.city, comapay_adress: @anschreiben.comapay_adress, company_city: @anschreiben.company_city, company_name: @anschreiben.company_name, datum: @anschreiben.datum, name: @anschreiben.name, plz: @anschreiben.plz, stelle: @anschreiben.stelle } }
    end

    assert_redirected_to anschreiben_url(Anschreiben.last)
  end

  test "should show anschreiben" do
    get anschreiben_url(@anschreiben)
    assert_response :success
  end

  test "should get edit" do
    get edit_anschreiben_url(@anschreiben)
    assert_response :success
  end

  test "should update anschreiben" do
    patch anschreiben_url(@anschreiben), params: { anschreiben: { adess: @anschreiben.adess, bewerbung: @anschreiben.bewerbung, city: @anschreiben.city, comapay_adress: @anschreiben.comapay_adress, company_city: @anschreiben.company_city, company_name: @anschreiben.company_name, datum: @anschreiben.datum, name: @anschreiben.name, plz: @anschreiben.plz, stelle: @anschreiben.stelle } }
    assert_redirected_to anschreiben_url(@anschreiben)
  end

  test "should destroy anschreiben" do
    assert_difference('Anschreiben.count', -1) do
      delete anschreiben_url(@anschreiben)
    end

    assert_redirected_to anschreibens_url
  end
end
