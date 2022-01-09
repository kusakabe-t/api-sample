module Api
  class TestController < ApplicationController
    def index
      render json: { result: 'this is test request!' }, status: :ok
    end
  end
end
