class FirstPageController < ApplicationController
  def login
    if request.post?
      if params[:username]=="mahesh" && params[:password]=="pandey"
      	session[:first_page] = "first"
        redirect_to :controller=>:home,:action=>:index
       
      else
      	flash[:notice]="Invalid  credentials"
      	render :action=>:login
      end
  	end
  end
  def logout
    session[:first_page] = nil
    redirect_to :action=>:login
  end
end
