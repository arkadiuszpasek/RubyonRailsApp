require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get article_display_url
    assert_response :success
  end

end
