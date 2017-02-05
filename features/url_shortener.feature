Feature: URL Shortener
  As a website visitor
  I like to shorten my URLs for long website addresses
  So that I can use them instead
  
  @javascript
  Scenario: Getting short URLs
    Given I am on the home page
    When  I provide a website address http://www.google.co.uk
    Then  It should display the shortened version of http://www.google.co.uk
    
  Scenario: Redirecting to a short address
    Given I have a short URl of the address
    When  I click on a short URL
    Then  I should be redirected to the original website address   