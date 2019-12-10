require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", user_path(@user)
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path

    @user = users(:archer)
    log_in_as(@user)

    get contact_path
    assert_select "title"

    get users_path
    assert_select "title", full_title("All users")

    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
