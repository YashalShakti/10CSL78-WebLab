require 'test_helper'

class BookinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookinfo = bookinfos(:one)
  end

  test "should get index" do
    get bookinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_bookinfo_url
    assert_response :success
  end

  test "should create bookinfo" do
    assert_difference('Bookinfo.count') do
      post bookinfos_url, params: { bookinfo: { acct: @bookinfo.acct, author: @bookinfo.author, edition: @bookinfo.edition, publication: @bookinfo.publication, title: @bookinfo.title } }
    end

    assert_redirected_to bookinfo_url(Bookinfo.last)
  end

  test "should show bookinfo" do
    get bookinfo_url(@bookinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookinfo_url(@bookinfo)
    assert_response :success
  end

  test "should update bookinfo" do
    patch bookinfo_url(@bookinfo), params: { bookinfo: { acct: @bookinfo.acct, author: @bookinfo.author, edition: @bookinfo.edition, publication: @bookinfo.publication, title: @bookinfo.title } }
    assert_redirected_to bookinfo_url(@bookinfo)
  end

  test "should destroy bookinfo" do
    assert_difference('Bookinfo.count', -1) do
      delete bookinfo_url(@bookinfo)
    end

    assert_redirected_to bookinfos_url
  end
end
