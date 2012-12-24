class SessionsController < ApplicationController
  def create
    session[:imac] = params[:imac]
    redirect_to root_url
  end
end