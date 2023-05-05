module Api
  class RoutesController < ApplicationController
    def index
      render json: Route.all
    end
  end
end