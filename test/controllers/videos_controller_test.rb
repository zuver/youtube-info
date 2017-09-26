require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  # Tests that
  test 'should respond with 200 when properly formed' do
    get videos_url, params: {id: 'dQw4w9WgXcQ'}
    assert_response :success
  end

  test 'should respond with 400 when id is omitted' do
    get videos_url
    assert_response :bad_request
  end

  test 'should respond with 404 when id is not found' do
    get videos_url, params: {id: 'invalid_video_id'}
    assert_response :not_found
  end
end
