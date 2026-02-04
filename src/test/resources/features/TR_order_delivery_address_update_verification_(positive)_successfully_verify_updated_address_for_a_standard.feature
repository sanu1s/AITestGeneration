Feature: Order Delivery Address Update Verification (Positive)

  Scenario: Successfully verify updated address for a standard order
    Given User is on the order tracking page
    When User enters order number "ORD001_UPDATED"
    And User clicks the Track Order button
    Then The order details should include address "456 Oak Avenue, Springfield, IL 62704"
