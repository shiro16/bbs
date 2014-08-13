require 'test_helper'

class BbsCommentsControllerTest < ActionController::TestCase
  setup do
    @bbs_comment = bbs_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bbs_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bbs_comment" do
    assert_difference('BbsComment.count') do
      post :create, bbs_comment: { bbs_thread_id: @bbs_comment.bbs_thread_id, body: @bbs_comment.body, password: @bbs_comment.password }
    end

    assert_redirected_to bbs_comment_path(assigns(:bbs_comment))
  end

  test "should show bbs_comment" do
    get :show, id: @bbs_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bbs_comment
    assert_response :success
  end

  test "should update bbs_comment" do
    put :update, id: @bbs_comment, bbs_comment: { bbs_thread_id: @bbs_comment.bbs_thread_id, body: @bbs_comment.body, password: @bbs_comment.password }
    assert_redirected_to bbs_comment_path(assigns(:bbs_comment))
  end

  test "should destroy bbs_comment" do
    assert_difference('BbsComment.count', -1) do
      delete :destroy, id: @bbs_comment
    end

    assert_redirected_to bbs_comments_path
  end
end
