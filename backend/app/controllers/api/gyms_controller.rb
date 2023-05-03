module Api
  class GymsController < ApplicationController

    def index
      render json: Gym.all
    end
  end
end