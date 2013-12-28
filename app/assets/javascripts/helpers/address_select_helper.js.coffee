
countryArray = undefined

getCountries = ->
  countryId = $("#country-select").val()
  $.get "http://localhost:3000/countries.json", countryId, (response) ->
    countryArray = response
    countryListBuilder()

getCountries()

countryListBuilder = ->
	console.log countryArray
	
	selectCountryString = ""
	i = 0

	while i < countryArray.length
	  selectCountryString += '<option value="' + countryArray[i].country.id + '">' + countryArray[i].country.name + '</option>'
	  i++

	console.log selectCountryString
	$("#country-select").html selectCountryString




#$("#state").keyup getStores
#$("#state").keydown getStores
#$("#state").mouseup getStores
#$("#state").mousedown getStores