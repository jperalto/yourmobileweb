class PageController < ApplicationController
  layout 'static'
  def login
  end

  def registrate
  end

  def para_registro

  	puts " ----------- Datos recibidos de la página registro -----------"

  	a = params[:upc][:movil]
  	b = params[:upc][:contraseña]
  	c = params[:upc][:dni]
  	d = params[:upc][:email]

  	puts "El movil es: #{a}"
  	puts "La contraseña es: #{b}"
  	puts "El dni es: #{c}"
  	puts "El email es: #{d}"

  	puts "----------- Fin de Datos -----------"

  end


  def planes
  end
end
