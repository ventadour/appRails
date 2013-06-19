class SessionsController < ApplicationController
  def new
    @titre = "S'identifier"
  end

  #creation d'une session
  def create
    user = User.authenticate(params[:session][:email],
    params[:session][:password])
    if user.nil?
      flash.now[:error] = "Combinaison Email/Mot de passe invalide."
      @titre = "S'identifier"
      render 'new'
    else
      sign_in user
      #redirect_to user
      redirect_back_or user
    end
  end

  #destruction d'une session
  def destroy
    sign_out
    redirect_to root_path
  end
end
