class Public::VisitorsController < ApplicationController
  before_action :authenticate_visitor!
  before_action :correct_visitor,only: [:edit]

  def show
    @visitor = Visitor.find(params[:id])
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    if @visitor.update(visitor_params)
      redirect_to visitor_path(@visitor)
    else
      render "edit"
    end
  end

  private
  def visitor_params
    params.require(:visitor).permit(:name, :gender, :age, :favorite_food, :introduction)
  end

  def correct_visitor
        @visitor = Visitor.find(params[:id])
    unless @visitor.id == current_visitor.id
      redirect_to gourmets_path
    end
  end
end
