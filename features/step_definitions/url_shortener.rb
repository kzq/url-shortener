Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I provide a website address (.*)$/) do |url|
  fill_in 'url', with: url
  click_button('Add')
  #page.save_screenshot('screen.png', full: true)
  expect(page).to have_content(url)
end

Then(/^It should display the shortened version of (.*)$/) do |address|
  shortened_url = ShortenedUrl.select("id,url,unique_key").find_by(url: "#{address}/")
  expect(page).to have_content(shortened_url.unique_key)
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