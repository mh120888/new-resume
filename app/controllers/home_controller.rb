class HomeController < ApplicationController

  def index
  end

  def send_email
    if params[:email] && params[:body] && params[:subject] && params[:name]
      MessageMailer.message_me(email: params[:email], body: params[:body], subject: params[:subject], name: params[:name]).deliver
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end