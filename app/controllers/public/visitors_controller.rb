class Public::VisitorsController < ApplicationController
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
end
