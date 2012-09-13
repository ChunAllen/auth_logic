class UsersController < ApplicationController

  def new
    super
  end
  
 	def show
 		@users = User.find(params[:id])
 	end



	def index
		@users = User.all
	end


	def new
		puts '>>>>>>>>>>'
		@user = User.new
	end

	def create
		puts '>>>>>>>>>>'
		@user = User.new(params[:user])
		@user.save
	end


	def destroy 
  		 signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    	 respond_to do |format|
        	 format.js  { render :partial => 'log_me_out',:layout => false }
    	 end
	end





end