Feature: Price Match Request Functionality - Positive Scenarios

  Scenario: Successfully submit a price match request for a product
    Given User is on the "Price Match Request" page
    When User enters competitor URL "https://competitorstore.com/productA"
    And User enters competitor price "150.00"
    And User clicks the "Submit Price Match" button
    Then A success message "Your price match request has been submitted successfully." should be displayed
