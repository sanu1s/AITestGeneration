Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Order 'INVALIDORDER' not found. Please check the number and try again."
    And The URL should be "https://example.com/track"
