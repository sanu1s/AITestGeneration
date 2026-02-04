Feature: Price Match Request Functionality - Positive Scenarios

  Scenario: Successfully submit another price match request for a different product
    Given User is on the "Price Match Request" page
    When User enters competitor URL "https://competitorstore.net/itemB"
    And User enters competitor price "25.50"
    And User clicks the "Submit Price Match" button
    Then A success message "Your price match request has been submitted successfully." should be displayed
