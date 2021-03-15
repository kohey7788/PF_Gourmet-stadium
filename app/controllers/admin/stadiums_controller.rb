class Admin::StadiumsController < ApplicationController
  def new
    @stadium = Stadium.new
  end

  def create
    @stadium = Stadium.new
    @stadium.save
  end

  def index
    @stadiums = Stadiums.all
  end

  def show
  end

  def edit
  end

  def update
  end
end
