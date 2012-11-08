module NavigationHelpers

	def path_to(page_name)
		url = case page_name
			when 'Home' then '/questions'
			when 'FAQ' then '/questions'
			when 'Tags' then '/categories'
		end
		url
	end

	def button(key)
		link = case key.downcase.strip
			when 'edit' then 'Edit'
			when 'delete' then 'Destroy'
			when 'create question' then 'Create Question'
			when 'new question' then 'New Question'
			when 'add new category' then 'Add New Category'
			when 'update category' then 'Update Category'
			when 'update question' then 'Update Question'
		end
	end

	def decode(value)
		val = case value
			when 'new category' then 'Coisas'
			when 'first category' then 'Compras'
			when 'new question' then 'Quanto custam os portes de envio de uma encomenda pequena?'
			when 'new answer' then 'Custam 10e.'
			when 'first question' then 'Quanto custam os portes de envio?'
			when 'first answer' then 'Depende do tamanho.'
			when 'second question' then 'Quanto tempo demora o envio?'
			when 'second answer' then 'Depende do local de entrega.'
			when 'create question confirmation' then 'Question was successfully created.'
			when 'update question confirmation' then 'Question was successfully edited.'
			when 'delete question confirmation' then 'The FAQ topic was successfully deleted.'
			when 'create category confirmation' then 'The category was successfully created.'
			when 'update category confirmation' then 'Category was successfully updated.'
			when 'delete category confirmation' then 'The category was successfully deleted.'

			else value
		end
		val
	end
end

World(NavigationHelpers)