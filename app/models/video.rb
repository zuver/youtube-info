class Video < ApplicationRecord
  def self.get_video_info(video_id)
    # Uses the Fullscreen/yt gem to query the YouTube API
    yt_video = Yt::Video.new id: video_id

    # Map the video object returned by yt
    return {
        id: yt_video.id,
        view_count: yt_video.view_count
    }
  end
end
