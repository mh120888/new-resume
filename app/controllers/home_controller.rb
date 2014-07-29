class HomeController < ApplicationController

  def index
  end

  def send_email
    if params[:email] && params[:body] && params[:name]
      MessageMailer.mail_me(email: params[:email], body: params[:body], name: params[:name]).deliver
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end