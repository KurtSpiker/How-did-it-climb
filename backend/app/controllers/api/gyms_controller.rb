module Api
  class GymsController < ApplicationController

    before_action :load_gyms, only: :index
    before_action :load_gym, only: :show

    def index
      render_object(@gyms)
    end

    def show
      render_object(@gym)
    end

    def create
      new_gym = Gym.new(name: create_attributes[:name])
      save_and_render(new_gym)
    end

    private

    def create_attributes
      request_data_attributes.tap { |attrs|
        attrs.require(:name)
      }
    end

    def load_gyms
      @gyms = Gym.all
    end

    def load_gym
      @gym = Gym.find_by(id: params.require(:id))
    end
  end
end
