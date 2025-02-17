# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :find_bookmark
  helper_method :list_tags
  helper_method :tutorial_name
  helper_method :find_associated_user

  add_flash_types :success

  def find_associated_user(follower_name)
    User.find_by(github_username: follower_name)
  end
  #
  # def find_bookmark(id)
  #   current_user.user_videos.find_by(video_id: id)
  # end
  #
  # def tutorial_name(id)
  #   Tutorial.find(id).title
  # end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def four_oh_four
    raise ActionController::RoutingError, 'Not Found'
  end
end
