require 'test_helper'

class QuerriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @querry = querries(:one)
  end

  test "should get index" do
    get querries_url
    assert_response :success
  end

  test "should get new" do
    get new_querry_url
    assert_response :success
  end

  test "should create querry" do
    assert_difference('Querry.count') do
      post querries_url, params: { querry: { answer: @querry.answer, question: @querry.question, tip: @querry.tip, wish_id: @querry.wish_id } }
    end

    assert_redirected_to querry_url(Querry.last)
  end

  test "should show querry" do
    get querry_url(@querry)
    assert_response :success
  end

  test "should get edit" do
    get edit_querry_url(@querry)
    assert_response :success
  end

  test "should update querry" do
    patch querry_url(@querry), params: { querry: { answer: @querry.answer, question: @querry.question, tip: @querry.tip, wish_id: @querry.wish_id } }
    assert_redirected_to querry_url(@querry)
  end

  test "should destroy querry" do
    assert_difference('Querry.count', -1) do
      delete querry_url(@querry)
    end

    assert_redirected_to querries_url
  end
end
