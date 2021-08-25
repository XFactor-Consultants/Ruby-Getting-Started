require "application_system_test_case"

class WikiPostsTest < ApplicationSystemTestCase
  setup do
    @wiki_post = wiki_posts(:one)
  end

  test "visiting the index" do
    visit wiki_posts_url
    assert_selector "h1", text: "Wiki Posts"
  end

  test "creating a Wiki post" do
    visit wiki_posts_url
    click_on "New Wiki Post"

    click_on "Create Wiki post"

    assert_text "Wiki post was successfully created"
    click_on "Back"
  end

  test "updating a Wiki post" do
    visit wiki_posts_url
    click_on "Edit", match: :first

    click_on "Update Wiki post"

    assert_text "Wiki post was successfully updated"
    click_on "Back"
  end

  test "destroying a Wiki post" do
    visit wiki_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wiki post was successfully destroyed"
  end
end
