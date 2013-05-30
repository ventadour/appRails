class PageController < ApplicationController
  
  def home
     @titre = "Accueil"
  end

  def contact
     @titre = "Contact"
  end
  
  def about
    @titre = "A Propos"
  end
  
  def aide
    @titre = "Aide"
  end
end
