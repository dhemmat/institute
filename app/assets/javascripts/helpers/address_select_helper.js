$(document).ready(function(){/*
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
	*/




	var locationArray, locationListBuilder, getLocations, selectLocationString, url;

	var urlMap = new Array();
	urlMap["country"] = "http://localhost:3000/countries.json";
	urlMap["region"] = "http://localhost:3000/regions.json";
	urlMap["cluster"] = "http://localhost:3000/clusters.json";
	urlMap["city"] = "http://localhost:3000/cities.json";
	urlMap["sector"] = "http://localhost:3000/sectors.json";
	urlMap["neighborhood"] = "http://localhost:3000/neighborhoods.json";

	var idMap = new Array();
	idMap["country"] = "#country-select";
	idMap["region"] = "#region-select";
	idMap["cluster"] = "#cluster-select";
	idMap["city"] = "#city-select";
	idMap["sector"] = "#sector-select";
	idMap["neighborhood"] = "#neighborhood-select";

	var nextIdMap = new Array();
	nextIdMap[idMap["country"]] = idMap["region"];
	nextIdMap[idMap["region"]] = idMap["cluster"];
	nextIdMap[idMap["cluster"]] = idMap["city"];
	nextIdMap[idMap["city"]] = idMap["sector"];
	nextIdMap[idMap["sector"]] = idMap["neighborhood"];
	nextIdMap[idMap["neighborhood"]] = null//idMap["address"];

	// Create inverted id map.
	var nameMap = new Array();
	for (var i in idMap){
		nameMap[idMap[i]] = i;
	}

	getLocations = function(url, selectedValue, idString) {
	  return $.get(url, selectedValue, function(response) {
	  	console.log(response)
	    locationArray = response;
	    return locationListBuilder(locationArray, idString);
	  });
	};

	locationListBuilder = function(locArray, idString) {
		locationHTML = '<option value="" selected="selected"></option>';

		for (var i=0; i < locArray.length; i++) {
		  locationHTML +='<option value="' + locArray[i].id + '">' + locArray[i].name + '</option>';
		}

		$(idString).html(locationHTML);
		$(idString).removeAttr('disabled');
		
	};

	initializer = function(){
		locationArray = null;
		loadSelectorData(idMap["country"], true);
	}

	loadSelectorData = function(id, is_init){
		var selectToRetrieveId;
		if (is_init){
			selectToRetrieveId = id;
		}
		else {
			selectToRetrieveId = nextIdMap[id];
		}
		var locationType = nameMap[selectToRetrieveId];
		resetSelects(locationType);
		var url = urlMap[locationType];
		var selectedValue = $(id).val();
		getLocations(url, selectedValue, selectToRetrieveId);
	}

	resetSelects = function(locationType){	
		// RESET ADDRESSES HERE
		console.log("LOCATION TYPE RESET START");
		while (nextIdMap[idMap[locationType]] != null){
			console.log("LOCATION TYPE = "+locationType);
			$(nextIdMap[idMap[locationType]]).html('<option value="" selected="selected"></option>');
			$(nextIdMap[idMap[locationType]]).attr('disabled', 'disabled');
			locationType = nameMap[nextIdMap[idMap[locationType]]];
		}
		/*if (locationType == "neighborhood"){
			return;
		}
		if (locationType == "sector"){
			return;
		}
		if (locationType == "city"){
			return;
		}
		if (locationType == "cluster"){
			return;
		}
		if (locationType == "region"){
			return;
		}
		if (locationType == "country"){
			return;
		}*/
		return;
	}

	$(".location-select").change(function(){
		console.log("ID = "+ $(this).attr('id'));
		loadSelectorData("#"+$(this).attr('id'));
		
	});

	initializer();

});