Feature: Order Cancellation Confirmation - Negative Test Cases

  Scenario: Verify incorrect confirmation message for order ORD789PENDING is not displayed
    Given User navigates to the order tracking page
    When User enters order number "ORD789PENDING"
    And User clicks the "Track Order" button
    Then The status message result should not contain "Are you sure it's cancelled but not really?"
