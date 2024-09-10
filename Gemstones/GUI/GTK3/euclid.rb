require 'gtk3'

def euclid(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

# Crearea ferestrei principale
window = Gtk::Window.new("Algoritmul lui Euclid")
window.set_default_size(300, 200)

# Label și Entry pentru primul număr
label1 = Gtk::Label.new("Introdu primul număr:")
entry1 = Gtk::Entry.new

# Label și Entry pentru al doilea număr
label2 = Gtk::Label.new("Introdu al doilea număr:")
entry2 = Gtk::Entry.new

# Label pentru afișarea rezultatului
result_label = Gtk::Label.new("CMMD este:")

# Butonul pentru calcul
button = Gtk::Button.new(label: "Calculează CMMD")
button.signal_connect("clicked") do
  num1 = entry1.text.to_i
  num2 = entry2.text.to_i
  result = euclid(num1, num2)
  result_label.text = "CMMD este: #{result}"
end

# Crearea unui container vertical și adăugarea widget-urilor
vbox = Gtk::Box.new(:vertical, 10)
vbox.pack_start(label1, expand: false, fill: false, padding: 5)
vbox.pack_start(entry1, expand: false, fill: false, padding: 5)
vbox.pack_start(label2, expand: false, fill: false, padding: 5)
vbox.pack_start(entry2, expand: false, fill: false, padding: 5)
vbox.pack_start(button, expand: false, fill: false, padding: 5)
vbox.pack_start(result_label, expand: false, fill: false, padding: 5)

# Adăugarea containerului în fereastră
window.add(vbox)

# Afișarea ferestrei
window.signal_connect("destroy") { Gtk.main_quit }
window.show_all

Gtk.main
