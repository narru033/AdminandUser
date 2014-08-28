class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@books = Book.where(:is_active => true)
		#@clients = Client.find(:all, :conditions => { :active => false })
  	#@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end
end
