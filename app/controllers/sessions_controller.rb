class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email])
    if user&.authenticate(params[:session][:password])
      flash[:notice] = 'You have successfully signed in'
      sign_in(user)
    else
      render 'new'
    end
  end

  def delete
    sign_out
  end
end
