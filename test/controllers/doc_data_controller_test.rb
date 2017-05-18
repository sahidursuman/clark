require 'test_helper'

class DocDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_datum = doc_data(:one)
  end

  test "should get index" do
    get doc_data_url
    assert_response :success
  end

  test "should get new" do
    get new_doc_datum_url
    assert_response :success
  end

  test "should create doc_datum" do
    assert_difference('DocDatum.count') do
      post doc_data_url, params: { doc_datum: {  } }
    end

    assert_redirected_to doc_datum_url(DocDatum.last)
  end

  test "should show doc_datum" do
    get doc_datum_url(@doc_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_doc_datum_url(@doc_datum)
    assert_response :success
  end

  test "should update doc_datum" do
    patch doc_datum_url(@doc_datum), params: { doc_datum: {  } }
    assert_redirected_to doc_datum_url(@doc_datum)
  end

  test "should destroy doc_datum" do
    assert_difference('DocDatum.count', -1) do
      delete doc_datum_url(@doc_datum)
    end

    assert_redirected_to doc_data_url
  end
end
