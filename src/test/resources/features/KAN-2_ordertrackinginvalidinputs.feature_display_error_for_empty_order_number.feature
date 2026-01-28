Feature: OrderTrackingInvalidInputs.feature

  Scenario: Display error for empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The page URL should be "http://127.0.0.1:8000/order/tracking"
    And The result should display "Order number cannot be empty."
