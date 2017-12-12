class MainController < ApplicationController
  ##
  # /find/:id
  def find
    render json: Person.find(params[:id])
  end
  ##
  # /list
  def list
    render json: Person.all
  end
end
