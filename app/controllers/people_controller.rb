class PeopleController < ApplicationController

  def show
    @people = People.find_by!(id: params[:id])
    render json: @people
  end

  def index
    @people = People.all
    render json: @people
  end

end