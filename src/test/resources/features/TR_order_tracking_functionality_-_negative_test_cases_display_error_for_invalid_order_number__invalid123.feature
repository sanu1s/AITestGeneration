Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display Error for Invalid Order Number "INVALID123"
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order number not found. Please try again."
    And The current URL should be "https://example.com/track"
