module Api
  class TestController < ApplicationController
    def index
      render json: { result: 'render is easy to use!!' }, status: :ok
    end
  end
end
