Feature: Price Match Request Functionality - Negative Scenarios

  Scenario: Attempt to submit a price match with an invalid competitor URL
    Given User is on the "Price Match Request" page
    When User enters competitor URL "invalid-url"
    And User enters competitor price "100.00"
    And User clicks the "Submit Price Match" button
    Then An error message "Please enter a valid URL for the competitor product." should be displayed
