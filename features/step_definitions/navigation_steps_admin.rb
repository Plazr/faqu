
Given /^I am on the '(.+)' page$/ do |page_name|
	visit path_to page_name
end

Given /^I click '(.+)'$/ do |link|
	click_on link
end

Given /^I am the admin$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^the following questions exist on the (.+):$/ do |table, cat|
  # table is a Cucumber::Ast::Table
  @questions = table.raw

  click_on decode(cat) #selcciona-se assim numa dropdown?

  # ve se cada pergunta existe e se tem a resposta correcta
  @questions.each do |qa|
  	if !(decode(qa[0]).downcase == 'question')
  	  click_on decode(qa[0])
  	  page.should have_content decode(qa[1])
  	  click_on decode(cat)
  	end
  end
  visit path_to 'Home'
end

Given /^the following category exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  @categories = table.raw

  @categories.each do |cat|
  	if !(decode(cat[0]).downcase == 'category')
  		page.should have_content decode(cat[0]) #numa dropdown ve se assim?
  	end
  end
end

###################################################################

Then /^I should see the (.+)$/ do |text|
	page.should have_content decode(text)
end

Then /^I should not see the (.+)$/ do |text|
	page.should_not have_content decode(text)
end

Then /^I should be on the '(.+)' page$/ do |page_name|
	page.should have_content page_name
end

###################################################################

When /^I select the (.+)$/ do |category|
  page.select(decode(category), :from => 'Category')
end

When /^I see '(.+)'$/ do |text|
	page.should have_content text
end

When /^I go to the '(.+)' page$/ do |page_name|
	visit path_to page_name
end

When /^I click on the (.+)$/ do |link|
	click_on decode link
end

When /^I click the (.+) button$/ do |key|
	click_on button key
end

When /^I accept .*$/ do
	page.driver.browser.switch_to.alert.accept 
end

When /^I fill in '(.+)' with a new (.+)$/ do |field, value|
	fill_in field, with: decode(value)
end

When /^I fill in '(.+)' with '(.+)'$/ do |field, value|
	fill_in field, with: value
end
