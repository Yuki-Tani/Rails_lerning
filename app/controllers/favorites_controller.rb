class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.favor(@micropost)
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_url)}
      format.js
    end
  end

  def destroy
    @micropost = Favorite.find(params[:id]).micropost
    current_user.unfavor(@micropost)
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_url)}
      format.js
    end
  end
end

=begin
  redirect_back(fallback_location: root_url)で元のurlにリダイレクト
=end
