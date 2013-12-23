module ApplicationHelper

	def title_helper(page_title)
		base_title = "GDB"
		if page_title.empty?
			base_title
		else
			"#{base_title} - #{page_title}"
		end
	end

	def full_name_builder(person)
		full_name=''
		(full_name += person.first_name+' ') if (person.first_name)
		(full_name += person.middle_name+' ') if (person.middle_name)
		(full_name += person.last_name+' ') if (person.last_name)
		(full_name += person.second_last_name+' ') if (person.second_last_name)
		(full_name += '('+person.nickname+')') if (person.nickname)
		full_name
	end

	def short_name_builder(person)
		full_name=''
		(full_name += person.first_name+' ') if (person.first_name)
		(full_name += person.last_name+' ') if (person.last_name)
		(full_name += '('+person.nickname+')') if (person.nickname)
		full_name
	end

	def short_address_builder(address)
		address_string = address.address + ', '
		address_string += address.neighborhood.name + ', '
		address_string += address.neighborhood.sector.city.name + '.'
	end
end
