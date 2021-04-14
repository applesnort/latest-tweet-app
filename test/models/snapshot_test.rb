require "test_helper"

class SnapshotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "rails credentials are accessible" do
    assert Rails.application.credentials.config.present?
  end

  test "passing twitter handle returns user id" do
    client = Snapshot.client
    assert client.user("britneyspears").id == 16409683
  end
end
