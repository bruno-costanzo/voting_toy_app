require "test_helper"

class ReferendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referenda = referendas(:one)
  end

  test "should get index" do
    get referendas_url
    assert_response :success
  end

  test "should get new" do
    get new_referenda_url
    assert_response :success
  end

  test "should create referenda" do
    assert_difference("Referenda.count") do
      post referendas_url, params: { referenda: { question: @referenda.question } }
    end

    assert_redirected_to referenda_url(Referenda.last)
  end

  test "should show referenda" do
    get referenda_url(@referenda)
    assert_response :success
  end

  test "should get edit" do
    get edit_referenda_url(@referenda)
    assert_response :success
  end

  test "should update referenda" do
    patch referenda_url(@referenda), params: { referenda: { question: @referenda.question } }
    assert_redirected_to referenda_url(@referenda)
  end

  test "should destroy referenda" do
    assert_difference("Referenda.count", -1) do
      delete referenda_url(@referenda)
    end

    assert_redirected_to referendas_url
  end
end
