class DataController < ApplicationController
  def home
  end

  def data
    @events = Event.all
    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end
end
