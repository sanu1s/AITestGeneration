Feature: OrderTrackingInvalidInputs.feature

  Scenario: Display error for invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The page URL should be "http://127.0.0.1:8000/order/tracking"
    And The result should display "Invalid Order Number Format."
