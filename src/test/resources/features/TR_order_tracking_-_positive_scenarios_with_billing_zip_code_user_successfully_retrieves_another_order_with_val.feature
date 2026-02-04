Feature: Order Tracking - Positive Scenarios with Billing Zip Code

  Scenario: User successfully retrieves another order with valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD4567"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD4567 has been shipped. Tracking ID: TRK789."
