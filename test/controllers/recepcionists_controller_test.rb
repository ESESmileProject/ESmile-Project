require "test_helper"

class RecepcionistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recepcionist = recepcionists(:one)
  end

  test "should get index" do
    get recepcionists_url
    assert_response :success
  end

  test "should get new" do
    get new_recepcionist_url
    assert_response :success
  end

  test "should create recepcionist" do
    assert_difference("Recepcionist.count") do
      post recepcionists_url, params: { recepcionist: { nome: @recepcionist.nome } }
    end

    assert_redirected_to recepcionist_url(Recepcionist.last)
  end

  test "should show recepcionist" do
    get recepcionist_url(@recepcionist)
    assert_response :success
  end

  test "should get edit" do
    get edit_recepcionist_url(@recepcionist)
    assert_response :success
  end

  test "should update recepcionist" do
    patch recepcionist_url(@recepcionist), params: { recepcionist: { nome: @recepcionist.nome } }
    assert_redirected_to recepcionist_url(@recepcionist)
  end

  test "should destroy recepcionist" do
    assert_difference("Recepcionist.count", -1) do
      delete recepcionist_url(@recepcionist)
    end

    assert_redirected_to recepcionists_url
  end
end
