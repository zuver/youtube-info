require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # Tests that a well-formed call to get_video_info succeeds
  # and returns the expected attributes
  test 'get_video_info should return video info' do
    result = Video.get_video_info('dQw4w9WgXcQ')
    assert(result.key?(:id))
    assert(result.key?(:view_count))
  end

  # Tests that an error is raised when nil is passed to get_video_info
  test 'get_video_info should raise when video_id is nil' do
    assert_raises(StandardError) do
      Video.get_video_info(nil)
    end
  end

  # Tests that an error is raised when an unknown video ID is passed to get_video_info
  test 'get_video_info should raise when video_id is not a valid YouTube video ID' do
    assert_raises(StandardError) do
      Video.get_video_info('invalid_video_id')
    end
  end
end
