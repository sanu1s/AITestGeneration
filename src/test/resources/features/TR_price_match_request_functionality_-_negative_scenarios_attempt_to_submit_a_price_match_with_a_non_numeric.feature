Feature: Price Match Request Functionality - Negative Scenarios

  Scenario: Attempt to submit a price match with a non-numeric competitor price
    Given User is on the "Price Match Request" page
    When User enters competitor URL "https://competitorstore.com/productD"
    And User enters competitor price "abc"
    And User clicks the "Submit Price Match" button
    Then An error message "Please enter a valid numeric price." should be displayed
