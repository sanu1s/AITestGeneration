Feature: Display Business Hours Functionality - Positive Scenarios

  Scenario: Successfully view business hours in the website footer
    Given I am on the home page
    Then I should see the business hours displayed as "Monday - Friday: 9 AM - 5 PM" in the footer
