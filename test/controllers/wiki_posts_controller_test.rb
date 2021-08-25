require "test_helper"

class WikiPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wiki_post = wiki_posts(:one)
  end

  test "should get index" do
    get wiki_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_wiki_post_url
    assert_response :success
  end

  test "should create wiki_post" do
    assert_difference('WikiPost.count') do
      post wiki_posts_url, params: { wiki_post: {  } }
    end

    assert_redirected_to wiki_post_url(WikiPost.last)
  end

  test "should show wiki_post" do
    get wiki_post_url(@wiki_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_wiki_post_url(@wiki_post)
    assert_response :success
  end

  test "should update wiki_post" do
    patch wiki_post_url(@wiki_post), params: { wiki_post: {  } }
    assert_redirected_to wiki_post_url(@wiki_post)
  end

  test "should destroy wiki_post" do
    assert_difference('WikiPost.count', -1) do
      delete wiki_post_url(@wiki_post)
    end

    assert_redirected_to wiki_posts_url
  end
end
