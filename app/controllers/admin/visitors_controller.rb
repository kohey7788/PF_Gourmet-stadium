class Admin::VisitorsController < Admin::ApplicationController
  def index
    @visitors = Visitor.all.page(params[:page]).per(10)
  end

  def show
    @visitor = Visitor.find(params[:id])
  end
end
