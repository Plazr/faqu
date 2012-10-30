Feature: Manage tags
	
	In order to manage the tags
	The admin
	Should be able to consult posts by tag, add and delete tags on a FAQ topic

	Scenario: Consult FAQ topics by tag
		Given I am on the 'FAQ' page
		When I click 'View FAQ topics by tag'
		And I see 'FAQ Topics by Tag'
		And I click 'admin'
		Then I should see 'Quem e bonito'
		And I should see 'E o Pereira'

	Scenario: Edit a FAQ topic tags
		Given I am on the 'FAQ' page
		When I click 'Quem e bonito'
		And I click 'Edit'
		And I fill in 'Tags' with 'jeitoso'
		And I click 'Submit'
		Then I should see 'jeitoso'
		And I should not see 'admin, aparencia'

	Scenario: Delete a FAQ topic tags
		Given I am on the 'FAQ' page
		When I click 'Quem e bonito'
		And I click 'Edit'
		And I fill in 'Tags' with ' '
		And I click 'Submit'
		Then I should not see 'admin, aparencia'
		And I should see ' '

	Scenario: Delete a FAQ topic and tags disapear if not tagged elsewhere

	Scenario: Delete FAQ topics by tag
