Feature: Order Cancellation Confirmation - Negative Test Cases

  Scenario: Verify different incorrect confirmation message for order ORD987PENDING is not displayed
    Given User navigates to the order tracking page
    When User enters order number "ORD987PENDING"
    And User clicks the "Track Order" button
    Then The status message result should not contain "Are you sure it's cancelled with a typo?"
