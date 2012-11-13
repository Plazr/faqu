@admin
Feature: Manage FAQ topics
	
	In order to manage the FAQ topics
	The Admin
	Should be able consult, create, edit and delete FAQ topics

	Background:
		Given I am on the 'Home' page
		And I am the admin
#		And the following category exist:
#		| Category       |
#		| first category |
#		And the following questions exist on the first category:
#		|Question|Answer|
#		| first question  | first answer  |
#		| second question | second answer |

	Scenario: Create a FAQ topic
		When I click on the New Question button
		And I select the first category
		And I fill in 'Question' with a new question
		And I fill in 'Answer' with a new answer
		And I click the Create Question button
		Then I should see the create question confirmation
		And I should see the new question
		And I should see the new answer

	Scenario: Edit a specific FAQ topic
		When I click on the first question
		And I click the Edit button
		And I fill in 'Question' with a new question
		And I fill in 'Answer' with a new answer
		And I click the Update Question button
		Then I should see the update question confirmation
		And I should see the new question
		And I should see the new answer

	Scenario: Delete a specific FAQ topic
		When I click on the first question
		And I click the Delete button
		And I accept the deletion
		Then I should see the delete faq confirmation
		And I should not see the first question
