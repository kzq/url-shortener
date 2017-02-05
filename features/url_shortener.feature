Feature: URL Shortener
  As a website visitor
  I like to shorten my URLs for long website addresses
  So that I can use them instead
  
  Background: 
    Given I am on the home page
  
  @javascript
  Scenario: Getting short URLs
    When  I provide a website address http://www.google.co.uk
    Then  It should display the shortened version of http://www.google.co.uk
  
  @javascript  
  Scenario: Redirecting to a short address
    Given I have a short URL of http://www.google.co.uk
    When  I click on short link of http://www.google.co.uk 
    Then  I should be redirected to the original website address   