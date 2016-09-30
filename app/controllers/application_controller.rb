class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def some_action
    respond_to do |format|
      format.html { redirect_to :back, notice: 'You have gone back one page' }
    end
  end

  #redirect and flash notice when user attempts to edit another user (and is not authorized)
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end
end
