class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def some_action
  	respond_to do |format|
  		format.html { redirect_to :back, notice: 'You have gone back one page' }
  	end
  end


end
