Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid 12-digit numeric order
    Given User navigates to the order tracking page
    When User enters order number "123456789012"
    And User clicks the 'Track Order' button
    Then The order status should be displayed as 'Delayed' with a delivery date
