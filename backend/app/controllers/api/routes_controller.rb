module Api
  class RoutesController < ApplicationController

    before_action :load_parent_gym, only: :index
    before_action :load_routes, only: :index
    before_action :load_route, only: :show

    def index
      render_object(@routes)
    end

    def show
      render_object(@route)
    end

    private

    def load_parent_gym
      @gym = Gym.find_by(id: params["gym_id"])
      unless @gym.present?
        render_not_found
      end
    end

    def load_routes
      @routes = @gym.routes
    end

    def load_route
      @route = Route.find_by(id: params.require(:id))
    end
  end
end
