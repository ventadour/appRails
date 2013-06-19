module DocumentsHelper
  def contentPreview(content)

    if content.size >10
      texte = content[0..20]+" ..."
    else
    content
    end
  end
  
  def icoSupp 
    
    image_tag("docSup.png", :title => "Supprimer" ,:class => "round", :size => "32x32")
    
  end
  
  def icoShow
    
    image_tag("docShow.png",:title => "Afficher" ,:class => "round", :size => "32x32")
  end
  
  def icoEdit 
    
    image_tag("docEdit.png", :title => "Modifier" ,:class => "round", :size => "32x32")
  end
  
  def icoNew
    
    image_tag("docNew.png", :title => "Nouveau" ,:class => "round", :size => "32x32")
  end
  
  def character_count(field_id, update_id, options = {})
    function = "$('#{update_id}').innerHTML = $F('#{field_id}').length;"
    out = javascript_tag(function) # set current length
    out += observe_field(field_id, options.merge(:function => function)) # and observe it
  end
  
end
