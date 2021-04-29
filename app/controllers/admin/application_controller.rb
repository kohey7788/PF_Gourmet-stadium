class Admin::ApplicationController < ActionController::Base
  layout 'layouts/application'

  before_action :login_check, only: [:index, :show, :new, :edit]

  private
    def login_check
      unless admin_signed_in?
        redirect_to root_path
      end
    end
end