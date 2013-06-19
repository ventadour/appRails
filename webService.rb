require 'sinatra'

class Compteur

  attr_accessor :val
  def initialize(valeur)
    @val = valeur
  end

  def plus
    @val += 1
  end

  def moins
    @val -= 1
  end

end



get '/' do
  
  @cpt = Compteur.new(0)
end

get '/cpt' do
  
  "valeur"
end

get '/cpt/plus' do
  
  @cpt.plus
  "valeur #{ @cpt.val }"
end

get '/cpt/moins' do
  
  @cpt.plus
  "valeur #{ @cpt.val }"
end
