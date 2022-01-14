class HomeController < ApplicationController
    before_action :admin_loggedin?
    def index
    end
    def profile
    end

    private
    def admin_loggedin?
        if session[:first_page].nil?
           redirect_to :controller=>:first_page,:action=>:login
        end
      end
end
