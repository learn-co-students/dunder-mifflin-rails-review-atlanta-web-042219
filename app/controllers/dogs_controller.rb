class DogsController < ApplicationController

  def index
    @dogs = Dog.sort
  end

  def show
    @dog = Dog.find(params[:id])
  end

end
