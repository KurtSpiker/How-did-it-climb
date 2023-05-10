module Api
  class CurrentUserController < ApplicationController
    before_action :authenticate_user!
    def index
      render_object(current_user)
    end
  end
end
