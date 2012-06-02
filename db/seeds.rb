# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(
:name => 'Mauricio', 
:email =>'maudiruiz@gmail.com',
:password => 'mauricio08',
:password_confirmation => 'mauricio08',
:twitter => 'mau_rs',
:facebook => 'maudiruiz'
)
Protectora.create(
:nombre => 'RescataPatitas', 
:email =>'protectora@gmail.com',
:password => 'mauricio08',
:password_confirmation => 'mauricio08',
:responsable => 'Mauricio Ruiz',
:twitter => 'RescataPatitas',
:facebook => 'RescataPatitas',
:telefono => '55432919',
:zona => 'Norte (Satelite)',
:autorizada => true,
)
Protectora.create(
:nombre => 'Animalia', 
:email =>'protectora2@gmail.com',
:password => 'mauricio08',
:password_confirmation => 'mauricio08',
:responsable => 'Pepe Montalvo',
:twitter => 'Animalia',
:facebook => 'Animalia',
:telefono => '56743827',
:zona => 'Sur (Coapa)',
:autorizada => false,
)
User.create(
:email => 'usuario@gmail.com', 
:password =>'mauricio08',
:password_confirmation => 'mauricio08',
)

Mascotum.create(
:nombre => 'Firulais', 
:especie =>'Perro',
:color => 'Cafe',
:pelo => 'Corto',
:tamano => 'Pequeno 60cm',
:caracter => 'Carinoso Leal Jugueton',
:observaciones => 'Firulais fue encontrado en la colonia condesa, es muy amistoso y le gusta mucho jugar con ninios pequenios',
:creator => '1',
:protectora =>"1",
:status=>"0",
:destacado =>true
)
Mascotum.create(
:nombre => 'Luna', 
:especie =>'Gato',
:color => 'Negro',
:pelo => 'Corto',
:tamano => 'Pequeno 40cm',
:caracter => 'Un poco solitario',
:observaciones => 'Luna es la mayor de una camada de 6 gatitos, nacio hace 1 mes',

:protectora =>"1",
:creator => '1',

:status=>"0",
:destacado =>true
)
Mascotum.create(
:nombre => 'Kiara', 
:especie =>'Perro',
:color => 'Blanco',
:pelo => 'Corto',
:tamano => 'Mediano 70cm',
:creator => '1',

:caracter => 'Alegre y juguetona',
:observaciones => 'Kiara es una perrita muy feliz',

:protectora =>"2",
:status=>"0",
:destacado =>true
)