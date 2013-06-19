require 'gtk2'
require 'json'

class Cpt

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

cpt = Cpt.new(0)

Gtk.init
window = Gtk::Window.new
window.set_title('Compteur')
window.signal_connect('destroy') { Gtk.main_quit }

vb = Gtk::VBox.new(true, 6)

label = Gtk::Label.new cpt.val.to_s
vb.add label

hb = Gtk::HBox.new(false, 6)
boutonMoins = Gtk::Button.new('-')
boutonMoins.signal_connect('clicked') { cpt.moins
  label.set_text(cpt.val.to_s)
  puts cpt.val.to_s}
hb.pack_start(boutonMoins)

boutonPlus = Gtk::Button.new('+')
boutonPlus.signal_connect('clicked') { cpt.plus
  label.set_text(cpt.val.to_s)
  puts cpt.val.to_s}
hb.pack_start(boutonPlus)
vb.pack_start(hb)

hb = Gtk::HBox.new(false, 6)

boutonClose = Gtk::Button.new(Gtk::Stock::CLOSE)
boutonClose.signal_connect('clicked') {
}
vb.pack_start(boutonClose)

window.add(vb)
window.show_all

Gtk.main