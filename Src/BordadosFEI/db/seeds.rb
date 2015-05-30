# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Empleado.new(:email => "uno@uno.uno", :password => "administracion2015", :password_confirmation => "administracion2015", :Nombre => "Administrador", :Direccion => "Bordadora FEI",:Telefono => "2211334455",:role => "gerente", :Sueldo => 2500).save!

