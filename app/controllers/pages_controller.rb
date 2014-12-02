class PagesController < ApplicationController

  #moved to application_controller!

  #before_action :ensure_logged_in
  before_action :authorize

  #class AccessDenied < StandardError
  #end

  #rescue_from AccessDenied, with: :render_404

  #def render_404
  #render "public/404", status: :not_found, layout: false
  #end

  def index
  end

  private

    #def ensure_logged_in
      #if session[:user_id].nil?
        #redirect_to signin_path
      #end
    #end

    def authorize
      if session[:user_id] != 3
        raise AccessDenied
        #render "public/404", status: :not_found, layout: false
      end
    end

end
