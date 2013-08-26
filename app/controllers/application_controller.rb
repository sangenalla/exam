class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate, :except => 'login'


  def login

  	if session[:user]
  		redirect_to '/examinations'
  	else
  		unless request.get?
	  		user = User.find_by_name(params[:user]) if params[:user] 
	  		if user
	  			session[:user] = user.name 
	  			redirect_to "/examinations"
	  		else
	  			redirect_to '/login', :flash => {:error => 'invalid user'}
	  		end
  		end
  	end	
  end

  def logout
  	session[:user] = nil
  	redirect_to '/login'
  end

  def authenticate
  	redirect_to '/login' unless session[:user].present?
  	@current_user = User.find_by_name(session[:user])
  end
end
