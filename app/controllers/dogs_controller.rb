class DogsController < ApplicationController
    before_action :set_dog, only: [:show]
    def index
        @Dogs = Dog.all
    end

    def show
    end


    private
    def set_dog
        @Dog = Dog.find(params[:id])
    end
end
