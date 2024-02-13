class SheltersController < ApplicationController
  before_action :set_shelter, only: [:show]

  def index
    @shelters = Shelter.all
    @user = current_user
    @favourite_shelter = @user.pets
    
    @markers = @shelters.geocoded.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { shelter: shelter }),
        marker_html: render_to_string(partial: "marker", locals: { shelter: shelter })
      }
    end
  end

  def show
  end

  private

  def set_shelter
    @shelter = Shelter.find(params[:id])
  end
end
