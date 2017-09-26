class VideosController < ApplicationController
  def show
    video_id = params[:id]

    # If ID is not provided, then we'll respond with 400
    if video_id.blank?
      render 'layouts/errors/_bad_request', status: :bad_request and return
    end

    begin
      # Retrieve video information
      @video = Video.get_video_info(video_id)
    rescue
      # This could actually be a 500
      # I make the assumption that the get_video_info call fails if the given video ID is not found by the yt client
      # One flaw with the yt client is that I didn't see a way to check explicitly for a 404
      # If there was a way to do that then this could be cleaner
      # Still, I wanted to use the yt client for obvious reasons :-)
      render 'layouts/errors/_not_found', locals: {video_id: video_id}, status: :not_found
    end
  end
end
