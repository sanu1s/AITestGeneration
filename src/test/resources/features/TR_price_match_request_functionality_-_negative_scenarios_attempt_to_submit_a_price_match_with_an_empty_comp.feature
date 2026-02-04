Feature: Price Match Request Functionality - Negative Scenarios

  Scenario: Attempt to submit a price match with an empty competitor price
    Given User is on the "Price Match Request" page
    When User enters competitor URL "https://competitorstore.com/productC"
    And User enters competitor price ""
    And User clicks the "Submit Price Match" button
    Then An error message "Competitor price cannot be empty." should be displayed
