Feature: Order Tracking Functionality - Negative and Validation Scenarios

  Scenario: Display timeout error when tracking takes too long
    Given User is on the order tracking page
    When User enters order number "SLOWORDER123"
    And User clicks the "Track Order" button
    Then The error message should display "Request timed out. Please try again later."
