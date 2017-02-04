Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I provide a website address (.*)$/) do |url|
  fill_in 'url', with: url
  click_button('Add')
  #page.save_screenshot('screen.png', full: true)
end

Then(/^It should display the shortened version of the given (.*)$/) do |address|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have a short URl of the (.*)$/) do |address|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on a short (.*)$/) do |url|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be redirected to the original (.*) address$/) do |website_address|
  pending # Write code here that turns the phrase above into concrete actions
end