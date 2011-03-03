require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
    @post = posts(:one)
  end

  test "should get new" do
    get :new, :post_id => @post.to_param
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, :post_id => @post.to_param, :comment => @comment.attributes
    end

    assert_redirected_to post_path(@post)
  end

  test "should get edit" do
    get :edit, :id => @comment.to_param
    assert_response :success
  end

  test "should update comment" do
    put :update, :id => @comment.to_param, :comment => @comment.attributes
    assert_redirected_to post_path(@post)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, :id => @comment.to_param
    end

    assert_redirected_to post_path(@post)
  end
end
