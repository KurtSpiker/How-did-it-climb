module Api
  class GymsController < ApplicationController

    def index
      render json: { content: 'Gyms :) !!' }
    end
    def hello
      render json: { content: 'Hello from Rails' }
    end
  end
end