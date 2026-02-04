Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track a valid order and verify current status
    Given User is on the order tracking page
    When User enters order number "0012296399"
    And User clicks the "Track Order" button
    Then The order status should display "Your order 0012296399 is expected on Monday."
