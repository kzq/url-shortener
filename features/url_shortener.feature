Feature: URL Shortener
  As a website visitor
  I like to shorten my URLs for long website addresses
  So that I can use them instead
  
  Scenario: Getting short URLs
    Given I am on the home page
    When  I provide a website address
    Then  It should display the shortened version of the given address
    
  Scenario: Redirecting to a short address
    Given I have a short URl of the address
    When  I click on a short URL
    Then  I should be redirected to the original website address   