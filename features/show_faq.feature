Feature: Show a Question

	Scenario Outline: Show an individual faq  
		Given I am on the 'FAQ' page
		When I select one question '<Question>'
		Then I should see the page of the question '<Question>'
		Examples:
				| Question 	|
				| Teste?	|
