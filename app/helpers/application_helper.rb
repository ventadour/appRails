# encoding: utf-8
module ApplicationHelper
  def titre
    base_titre = "Serveur d'application"
    if @titre.nil?
    base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end

  def logo

    image_tag("logoApp.png", :alt => "Application exemple", :size => "150x100",:class => "round")
  end
  
   def logoApp

    image_tag("app.png", :class => "round", :size => "32x32")
  end
  
  def logoDoc
    
    image_tag("doc.png", :class => "round", :size => "32x32")
  end
  
  def logoUser
    
    image_tag("user.png", :class => "round", :size => "32x32")
  end
  
  def logoHome
    
    image_tag("home.png", :class => "round", :size => "32x32")
  end
  
  def icoCheck
    
    image_tag("icoCheck.png", :class => "round", :size => "16x16")
  end
  
  def icoPrivate
    
    image_tag("private.png", :class => "round", :size => "128x128")
  end
  
  def icoReturn
    
    image_tag("icoReturn.png",:title => "Retour", :class => "round", :size => "16x16")
  end
  
end
