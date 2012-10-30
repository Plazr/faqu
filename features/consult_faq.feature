Feature: Manage FAQ

	In order to manage the FAQ
	The admin
	Should be able to consult, add, edit and delete FAQ topics

	Scenario: Visit the FAQ page
		Given I am on the 'FAQ' page
		Then I should see 'FAQ'
		And I should see 'Quem e bonito'

	Scenario: Add a new question and answer
		Given I am on the 'FAQ' page
		When I click 'Add new question'
		And I fill in 'Question' with 'Quem e o Admin'
		And I fill in 'Answer' with 'E o Pereira'
		And I fill in 'Tags' with 'admin, aparencia'
		And I click 'Submit'
		Then I should see 'The FAQ topic was successfully created'
		And I should see 'Quem e o Admin'
		And I should see 'E o Pereira'
		And I should see 'admin, aparencia'

	Scenario: Show an answer to a question
		Given I am on the 'FAQ' page
		When I click 'Quem e bonito'
		Then I should see 'Quem e bonito'
		And I should see 'E o Pereira'
		And I should see 'admin, aparencia'

	Scenario: Edit a FAQ topic
		Given I am on the 'FAQ' page
		When I click 'Quem e bonito'
		And I click 'Edit'
		And I fill in 'Answer' with 'E o Andre'
		And I click 'Submit'
		Then I should see 'The FAQ topic was successfully edited'
		And I should see 'Quem e bonito'
		And I should see 'E o Andre'

	Scenario: Delete a FAQ topic
		Given I am on the 'FAQ' page
		When I click 'Quem e bonito'
		And I click 'Delete'
		And I accept the deletion
		Then I should see 'The FAQ topic was successfully deleted'
		And I should be on the 'FAQ' page
		And I should not see 'Quem e bonito'

	Scenario: Add new empty FAQ topic
