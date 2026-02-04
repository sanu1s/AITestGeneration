Feature: Display Business Hours Functionality - Positive Scenarios

  Scenario: Successfully view business hours on the Contact Us page
    Given I am on the home page
    When I navigate to the "Contact Us" page
    Then I should see the business hours displayed as "Monday - Friday: 9 AM - 5 PM"
