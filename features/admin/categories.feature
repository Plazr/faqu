@admin
Feature: Manage FAQ categories
	
	In order to manage the FAQ categories
	The Admin
	Should be able create, edit and delete FAQ categories and move FAQ topics between categories

	Background:
		Given I am on the 'Home' page
		And I am the admin
#		And the following category exist:
#		| Category       |
#		| first category |
#		And the following questions exist on the first category:
#		|Question|Answer|
#		| first question  | first answer  |

	Scenario: Create a new category
		When I click the New Question button
		And I fill in 'New category' with a new category
		And I fill in 'Question' with a new question
		And I fill in 'Answer' with a new answer
		And I click the Create Question button
		Then I should see the create question confirmation
		And I should see the new category

	Scenario: Edit a category
		When I click on the 'Manage Categories'
		And I click on the first category
		And I fill in 'Description' with a new category
		And I click the Update Category button
		Then I should see the update category confirmation
		And I should see the new category

	# Elimina automaticamente uma categoria se nao tiver questoes
	Scenario: Delete a category
		When I click on the first question
		And I click the Delete button
		And I accept the deletion
		Then I should not see the first category
