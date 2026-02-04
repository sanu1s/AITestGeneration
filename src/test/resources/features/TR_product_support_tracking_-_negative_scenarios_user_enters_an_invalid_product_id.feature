Feature: Product Support Tracking - Negative Scenarios

  Scenario: User enters an invalid product ID
    Given User is on the product support page
    When User enters product ID "INVALIDID"
    And User clicks the "Track Order" button
    Then The error message should display "Product ID not found. Please try again."
