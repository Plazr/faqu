module NavigationHelpers

	def path_to(page_name)
		url = case page_name
			when 'FAQ' then '/faq'
		end
		return url
	end
end