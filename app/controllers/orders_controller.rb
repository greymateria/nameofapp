class OrdersController < ApplicationController
	
  # cannot access order actions unless signed in
  before_filter :authenticate_user!

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end