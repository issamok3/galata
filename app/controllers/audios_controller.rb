class AudiosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @audios = Audio.where(site: @site)
  end

  def new
    @audio = Audio.new
  end

  def create
    @site = Site.find(params[:audio][:site_id])
    @audio = Audio.new(audio_params)
    @audio.site = @site
    @audio.user = current_user
    if @audio.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @audio = Audio.find(params[:id])
    @audio.destroy
    redirect_to dashboard_path
  end

  private

  def audio_params
    params.require(:audio).permit(:title, :description, :spotify_uri)
  end
end
