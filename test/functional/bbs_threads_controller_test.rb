require 'test_helper'

class BbsThreadsControllerTest < ActionController::TestCase
  setup do
    @bbs_thread = bbs_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbs_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bbs_thread" do
    assert_difference('BbsThread.count') do
      post :create, bbs_thread: { password: @bbs_thread.password, title: @bbs_thread.title }
    end

    assert_redirected_to bbs_thread_path(assigns(:bbs_thread))
  end

  test "should show bbs_thread" do
    get :show, id: @bbs_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bbs_thread
    assert_response :success
  end

  test "should update bbs_thread" do
    put :update, id: @bbs_thread, bbs_thread: { password: @bbs_thread.password, title: @bbs_thread.title }
    assert_redirected_to bbs_thread_path(assigns(:bbs_thread))
  end

  test "should destroy bbs_thread" do
    assert_difference('BbsThread.count', -1) do
      delete :destroy, id: @bbs_thread
    end

    assert_redirected_to bbs_threads_path
  end
end
