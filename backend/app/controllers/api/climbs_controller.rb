module Api
  class ClimbsController < ApplicationController

    before_action :authenticate_user!
    before_action :load_parent_route, only: [:index, :create]
    before_action :load_climbs, only: :index
    before_action :load_climb, only: :show

    def index
      render_object(@climbs)
    end

    def show
      render_object(@climb)
    end

    def create
      attrs = create_attributes
      new_climb = @route.climbs.new(
          comment: create_attributes[:comment],
          attempts: create_attributes[:attempts],
          topped: create_attributes[:topped],
          zoned: create_attributes[:zoned],
          user: current_user
      )
      save_and_render(new_climb)
    end

    private

    def load_parent_route
      @route = Route.find_by(id: params["route_id"])
      unless @route.present?
        render_not_found
      end
    end

    def load_climbs
      @climbs = @route.climbs
    end

    def load_climb
      @climb = Climb.find_by(id: params.require(:id))
    end

    def create_attributes
      request_data_attributes.permit([
        :comment,
        :attempts,
        :topped,
        :zoned
      ])
    end
  end
end
  