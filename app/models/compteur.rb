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