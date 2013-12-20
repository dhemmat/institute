# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

persons = Person.create([
		{firstName:'David', middleName:'Riaz', lastName:'Hemmat', secondLastName:'Woodard', dateOfBirth:Date.new(1990,02,23), bahaiStatus:true},
		{firstName:'Leili', middleName:'Rebecca', lastName:'Hemmat', secondLastName:'Woodard', dateOfBirth:Date.new(1992,04,18), bahaiStatus:true},
		{firstName:'Luis', middleName:'Alberty', lastName:'Abarua', dateOfBirth:Date.new(1991,01,28), bahaiStatus:false},
		{firstName:'Anna', lastName:'Andreyuk', secondLastName:'de Hemmat', dateOfBirth:Date.new(1990,01,12), bahaiStatus:true}
	])

addresses = Address.create([
		{address:'Av. 27 de Febrero, No. 15'},
		{address:'Embrujo 1, Calle 7, No. 25'},
		{address:'Residencial Framboyan, Edif. 14, Apt. 3-A'}
	])

devotionals = Devotional.create([
		{description:'Devocional de Riaz y Anna'},
		{description:'Devocional de la Vega'},
		{description:'Devocional del Embrujo'}
	])