# encoding: utf-8
require 'json'

class Texte

  attr_accessor :contenu, :hashOcc
  def initialize(contenu)

    @contenu = contenu
  end

  # Formatage du texte (suppression des points, majuscules ... )
  def format

    @contenu = @contenu.tr('.' ',' ':' '(' ')' '[0,9][0,9][0,9]' '-' ,'')
    @contenu = @contenu.downcase
  end

  # Créé a partir d'un texte un hash contenant en clés les mots
  # du texte et en valeur leurs nombres d'occurences
  def occurence

    #place tous les mots du texte dans un tableau
    @mots = @contenu.split(' ')
    @motsTmp = @contenu.split(' ')

    #Creation d'un hash avec le nombre d'occurences de chaque mots
    @hashOcc = {}
    @mots.each do | m |

      @cpt = 0
      @motsTmp.each do |mTmp|

        if m == mTmp

          @cpt += 1
        end

      end

      if @cpt >1

      @hashOcc[m] = @cpt
      end

    end
  end
end

#Test sur les arguments de la commande
if ARGV.length < 1

  puts "Erreur: Argument manquant"
  puts "Syntaxe: occurence.rb Argument(string)"
  exit
elsif ARGV.length > 1

  puts "Erreur: trop d'argument"
  puts "Syntaxe: occurence.rb Argument(string)"
  exit
else

  ARGV.each do|arg|

    @texte = Texte.new( arg.to_s)
  end
end

@texte.format

@texte.occurence

@texte.contenu

if @texte.hashOcc.length == 0

  puts "{\"content\":\"Aucune répétition\"}"

else

  hash = @texte.hashOcc.sort_by { |k, v| v }

  hashJSON = hash.to_a.reverse[0..9].to_json
  puts hashJSON
end
