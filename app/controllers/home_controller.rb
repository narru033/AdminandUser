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
  
  def like
		@book= Book.find_by_id(params[:id])
			if Opinions.where(user_id: current_user.id, book_id: @book.id).first == nil
				@useropinion = Opinions.new
				@useropinion.user_id = current_user.id
				@useropinion.book_id =  @book.id
				@useropinion.like	= true
				@useropinion.unlike	= false
				@useropinion.save
				redirect_to :controller=>'home',:action=>'show',:id=>@book.id
			else
				@user_status = Opinions.where(user_id: current_user.id, book_id: @book.id).first
					if @user_status.like ==true
						redirect_to :controller=>'home',:action=>'show',:id=>@book.id
					else
						@user_status.like = true
						@user_status.unlike = false
						@user_status.save
						
						redirect_to :controller=>'home',:action=>'show',:id=>@book.id
					end
			end
	end

	def unlike
		@book= Book.find_by_id(params[:id])
			if Opinions.where(user_id: current_user.id, book_id: @book.id).first == nil
				@useropinion = Opinions.new
				@useropinion.user_id = current_user.id
				@useropinion.book_id =  @book.id 
				@useropinion.like	= false
				@useropinion.unlike	= true
				@useropinion.save
				redirect_to :controller=>'home',:action=>'show',:id=>@book.id
			else
				@user_status = Opinions.where(user_id: current_user.id, book_id: @book.id).first
					if @user_status.unlike == true
						redirect_to :controller=>'home',:action=>'show',:id=>@book.id
					else
						@user_status.unlike = true
						@user_status.like = false
						@user_status.save
						redirect_to :controller=>'home',:action=>'show',:id=>@book.id
					end
			end
	end
end
