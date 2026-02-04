Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track an order - Item sent to delivery center
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD12345 has been sent to delivery center."
