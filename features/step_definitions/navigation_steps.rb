
Given /^I am on the '(.+)' page$/ do |page_name|
	visit '/faqs' # '/app/views/'+page_name+'.html.erb'
end

Then /^I should see '(.+)'$/ do |text|
	page.should have_content text
end

Then /^I should not see '(.+)'$/ do |text|
	page.should_not have_content text
end

Then /^I should be on the '(.+)' page$/ do |page_name|
	page.should have_content page_name
end

When /^I see '(.+)'$/ do |text|
	page.should have_content text
end

When /^I click '(.+)'$/ do |link|
	click_on link
end

When /^I accept .*$/ do
	page.driver.browser.switch_to.alert.accept 
end

When /^I fill in '(.+)' with '(.+)'$/ do |field, value|
	fill_in field, with: value
end
