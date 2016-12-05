require File.dirname(__FILE__) + '/../test_helper'

class BookinfosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bookinfos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bookinfo
    assert_difference('Bookinfo.count') do
      post :create, :bookinfo => { }
    end

    assert_redirected_to bookinfo_path(assigns(:bookinfo))
  end

  def test_should_show_bookinfo
    get :show, :id => bookinfos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bookinfos(:one).id
    assert_response :success
  end

  def test_should_update_bookinfo
    put :update, :id => bookinfos(:one).id, :bookinfo => { }
    assert_redirected_to bookinfo_path(assigns(:bookinfo))
  end

  def test_should_destroy_bookinfo
    assert_difference('Bookinfo.count', -1) do
      delete :destroy, :id => bookinfos(:one).id
    end

    assert_redirected_to bookinfos_path
  end
end
