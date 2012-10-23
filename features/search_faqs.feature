Feature: Search Faqs

	Background:
		Given I am at the 'FAQ' page

	Scenario: Search all Faqs
		When I select 'All' categories
		Then I should see all questions
		
	Scenario Outline: Search Faqs with filter
		When I select category <Category>
		Then I should see the questions of category <Category>
		Examples:
			| Category |
			| asd      |
			| dsa      |