Feature: Order Tracking - Negative Scenarios and Validations

  Scenario: Attempt to track an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Order number INVALID000 not found. Please check your input."
    And The URL should be "https://example.com/track"
