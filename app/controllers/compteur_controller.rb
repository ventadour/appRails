# encoding: utf-8
class CompteurController < ApplicationController

  before_filter :createCompteur
  def index
    @titre = "Compteur"
    @cpt = Compteur.new(params[:cpt].to_i)
    @cpt
  end

  def plus

    @cpt = Compteur.new(params[:cpt].to_i)
    @cpt.plus
    redirect_to app_path(:cpt => @cpt.val)
  end

  def moins

    @cpt = Compteur.new(params[:cpt].to_i)
    @cpt.moins
   redirect_to app_path(:cpt => @cpt.val)
  end

  private

  def createCompteur

    @cpt = Compteur.new(0)
  end

end