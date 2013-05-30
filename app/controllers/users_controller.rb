class UsersController < ApplicationController
  def new
     @titre = "S'inscrire"
     @user=User.new
  end
  
  def show
    @user = User.find(params[:id])
    @titre = @user.nom
  end
  
  def create
    
    @user = User.new(params[:user])
    if @user.save
      # Traite un succès d'enregistrement.
    else
      @titre = "Inscription"
      render 'new'
    end
  end
  
end
