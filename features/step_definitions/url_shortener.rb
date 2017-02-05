Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I provide a website address (.*)$/) do |url|
  add_address(url)
end

Then(/^It should display the shortened version of (.*)$/) do |address|
  shortened_url = ShortenedUrl.select("id,url,short_url").find_by(url: "#{address}/")
  expect(page).to have_content(shortened_url.short_url)
end

Given(/^I have a short URL of (.*)$/) do |address|
  add_address(address)
  short_url= find_short_url(address).text
  expect(short_url).not_to eq('')
end

When(/^I click on short link of (.*)$/) do |address|
  find_short_url(address).find('a').click
end

Then(/^I should be redirected to the original (.*) address$/) do |website_address|
  page.save_screenshot('screenshot3.png')
end