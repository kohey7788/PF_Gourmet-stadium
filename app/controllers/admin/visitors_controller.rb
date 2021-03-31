class Admin::VisitorsController < Admin::ApplicationController
  def index
    @visitors = Visitor.all
  end

  def show
    @visitor = Visitor.find(params[:id])
  end
end
