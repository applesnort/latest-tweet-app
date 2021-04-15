require "test_helper"

class SnapshotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get snapshots_index_url
    assert_response :success
  end
end
