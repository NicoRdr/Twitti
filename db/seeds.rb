# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Utilisateur créé
User.create([{ name: 'phhaffner',
							email: 'phhaffner@gmail.com',
							nickname:'ph',
							password: 'azerty1234' }])
							
User.create([{ name: 'nicolas',
							nickname: 'nico94',
							email: 'nico@gmail.com',
            	password: 'azerty1234' }])
           

User.create([{ name: 'eric',
							nickname: 'riquet',
							email: 'admin@hotmail.fr',
            	password: 'azerty1234' }])

#Message crée


