class Public::VisitorsController < ApplicationController
  def show
    @visitor = Visitor.find(params[:id])
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.update(visitor_params)
  end

  private
  def visitor_params
    params.require(:visitor).permit(:name, :gender, :age, :favorite_food, :introduction)
  end
end
