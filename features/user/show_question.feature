Feature: Show a Question

	Scenario Outline: Show an individual faq  
		Given I am on the 'FAQ' page
		When I select one question '<Question>'
		Then I should be redirected to the page of the question '<Question>'
		Examples:
				| Question 	|
				| Teste?	|
