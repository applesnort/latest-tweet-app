require "test_helper"

class SnapshotsControllerTest < ActionDispatch::IntegrationTest

  test "should load root, input, and button" do
    get root_url
    assert_response :success
  end

  test "invalid handle should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(Twitter::Error) do
      client = Snapshot.client
      client.user("034523857029-435245-98")
    end
  end

end
