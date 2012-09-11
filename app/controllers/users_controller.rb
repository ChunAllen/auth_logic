class UsersController < ApplicationController

	def index
		@users = User.all
	end


	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		respond_to do |format|
			if @user.save
				format.html { redirect_to(users_path, :notice => 'Success.') }
	       		format.xml  { render :xml => @user, :status => :created, :location => @user }
			else
				format.html { render :action => "new" }
	      		format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
			end
		end
	end

end