# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

persons = Person.create([
		{first_name:'David', middle_name:'Riaz', last_name:'Hemmat', second_last_name:'Woodard', bahaiStatus:true},
		{first_name:'Leili', middle_name:'Rebecca', last_name:'Hemmat', second_last_name:'Woodard', bahaiStatus:true},
		{first_name:'Luis', middle_name:'Alberty', nickname:'Luiiiiiiis', last_name:'Abarua', bahaiStatus:false},
		{first_name:'Anna', last_name:'Andreyuk', nickname:'Bunny', second_last_name:'de Hemmat', bahaiStatus:true}
	])

devotionals = Devotional.create([
		{description:'Devocional de Riaz y Anna'},
		{description:'Devocional de la Vega'},
		{description:'Devocional del Embrujo'}
	])

countries = Country.create([
		{name:'Venezuela'},
		{name:'Dominican Republic'}
	])

regions = Region.create([
		{name:'Santiago', country_id:(Country.find_by name: 'Dominican Republic').id},
		{name:'Distrito Capital', country_id:(Country.find_by name: 'Dominican Republic').id}
	])

clusters = Cluster.create([
		{name:'Agrupacion 3', region_id:(Region.find_by name: 'Santiago').id},
		{name:'Agrupacion 13', region_id:(Region.find_by name: 'Distrito Capital').id},
	])

cities = City.create([
		{name:'Santiago', cluster_id:(Cluster.find_by name: 'Agrupacion 3').id},
		{name:'Tamboril', cluster_id:(Cluster.find_by name: 'Agrupacion 3').id},
	])

# THIS MAY GIVE TROUBLE LATER IF THE SEED HAS MANY CITIES WITH THE SAME NAME.
sectors = Sector.create([
		{name:'Santiago', city_id:(City.find_by name: 'Santiago').id}, 
	])

neighborhoods = Neighborhood.create([
		{name:'Embrujo I', sector_id:(Sector.find_by name: 'Santiago').id},
		{name:'Cerros de Gurabo', sector_id:(Sector.find_by name: 'Santiago').id},
		{name:'Los Pepines', sector_id:(Sector.find_by name: 'Santiago').id},
	])

addresses = Address.create([
		{address:'Av. 27 de Febrero, No. 15', neighborhood_id:(Neighborhood.find_by name: 'Cerros de Gurabo').id},
		{address:'Calle 7, No. 25',  neighborhood_id:(Neighborhood.find_by name: 'Embrujo I').id},
		{address:'Calle 10, No. 12', neighborhood_id:(Neighborhood.find_by name: 'Embrujo I').id}
	])

devotional_addresses = DevotionalAddress.create([
		{devotional_id:1, address_id:1},
		{devotional_id:1, address_id:2},
		{devotional_id:2, address_id:2},
		{devotional_id:3, address_id:3}
	])

devotional_participants = DevotionalParticipant.create([
		{devotional_id:1, person_id:1, is_host:true},
		{devotional_id:1, person_id:2, is_host:false},
		{devotional_id:1, person_id:3, is_host:false},
		{devotional_id:2, person_id:1, is_host:false},
		{devotional_id:2, person_id:2, is_host:true},
		{devotional_id:3, person_id:1, is_host:false},
		{devotional_id:3, person_id:3, is_host:true}
	])